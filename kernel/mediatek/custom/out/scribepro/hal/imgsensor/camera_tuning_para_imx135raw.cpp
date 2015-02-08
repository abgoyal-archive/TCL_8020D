
#include <utils/Log.h>
#include <fcntl.h>
#include <math.h>

#include "camera_custom_nvram.h"
#include "camera_custom_sensor.h"
#include "image_sensor.h"
#include "kd_imgsensor_define.h"
#include "camera_AE_PLineTable_imx135raw.h"
#include "camera_info_imx135raw.h"
#include "camera_custom_AEPlinetable.h"

const NVRAM_CAMERA_ISP_PARAM_STRUCT CAMERA_ISP_DEFAULT_VALUE =
{{
    //Version
    Version: NVRAM_CAMERA_PARA_FILE_VERSION,

    //SensorId
    SensorId: SENSOR_ID,
    ISPComm:{
        {
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    	}
    },
    ISPPca: {
        #include INCLUDE_FILENAME_ISP_PCA_PARAM
    },
    ISPRegs:{
        #include INCLUDE_FILENAME_ISP_REGS_PARAM
    },
    ISPMfbMixer:{{
        {//00: MFB mixer for ISO 100
            0x00000000, 0x00000000
        },
        {//01: MFB mixer for ISO 200
            0x00000000, 0x00000000
        },
        {//02: MFB mixer for ISO 400
            0x00000000, 0x00000000
        },
        {//03: MFB mixer for ISO 800
            0x00000000, 0x00000000
        },
        {//04: MFB mixer for ISO 1600
            0x00000000, 0x00000000
        },
        {//05: MFB mixer for ISO 2400
            0x00000000, 0x00000000
        },
        {//06: MFB mixer for ISO 3200
            0x00000000, 0x00000000
    }
    }},
    ISPCcmPoly22:{
        78550,    // i4R_AVG
        16722,    // i4R_STD
        99625,    // i4B_AVG
        22008,    // i4B_STD
        { // i4P00[9]
            5907500, -2865000, -485000, -1020000, 5012500, -1432500, -150000, -1930000, 4637500
        },
        { // i4P10[9]
            -1636644, 1279773, 341918, 59788, -363164, 324277, 264740, 580180, -838860
        },
        { // i4P01[9]
            -1336531, 857242, 464531, -143340, -317896, 481610, 176851, -134906, -39947
        },
        { // i4P20[9]
            0, 0, 0, 0, 0, 0, 0, 0, 0
        },
        { // i4P11[9]
            0, 0, 0, 0, 0, 0, 0, 0, 0
        },
        { // i4P02[9]
            0, 0, 0, 0, 0, 0, 0, 0, 0
        }        
    }
}};

const NVRAM_CAMERA_3A_STRUCT CAMERA_3A_NVRAM_DEFAULT_VALUE =
{
    NVRAM_CAMERA_3A_FILE_VERSION, // u4Version
    SENSOR_ID, // SensorId

    // AE NVRAM
    {
        // rDevicesInfo
        {
            1136,    // u4MinGain, 1024 base = 1x
            32768,    // u4MaxGain, 16x
            85,    // u4MiniISOGain, ISOxx  
            128,    // u4GainStepUnit, 1x/8 
            21,    // u4PreExpUnit 
            31,    // u4PreMaxFrameRate
            21,    // u4VideoExpUnit  
            31,    // u4VideoMaxFrameRate 
            1024,    // u4Video2PreRatio, 1024 base = 1x 
            22,    // u4CapExpUnit 
            15,    // u4CapMaxFrameRate
            1024,    // u4Cap2PreRatio, 1024 base = 1x
            20,    // u4LensFno, Fno = 2.8
            350    // u4FocusLength_100x
         },
         // rHistConfig
        {
            4,    // u4HistHighThres
            40,  // u4HistLowThres
            2,   // u4MostBrightRatio
            1,   // u4MostDarkRatio
            160, // u4CentralHighBound
            20,  // u4CentralLowBound
            {240, 230, 220, 210, 200}, // u4OverExpThres[AE_CCT_STRENGTH_NUM]
            {82, 108, 128, 148, 170},  // u4HistStretchThres[AE_CCT_STRENGTH_NUM]
            {18, 22, 26, 30, 34}       // u4BlackLightThres[AE_CCT_STRENGTH_NUM]
        },
        // rCCTConfig
        {
            TRUE,            // bEnableBlackLight
            TRUE,            // bEnableHistStretch
            FALSE,           // bEnableAntiOverExposure
            TRUE,            // bEnableTimeLPF
            FALSE,    // bEnableCaptureThres
            FALSE,    // bEnableVideoThres
            FALSE,    // bEnableStrobeThres
            47,                // u4AETarget
            47,                // u4StrobeAETarget

            50,                // u4InitIndex
            4,                 // u4BackLightWeight
            32,                // u4HistStretchWeight
            4,                 // u4AntiOverExpWeight
            2,                 // u4BlackLightStrengthIndex
            4,    // u4HistStretchStrengthIndex
            2,                 // u4AntiOverExpStrengthIndex
            2,                 // u4TimeLPFStrengthIndex
            {1, 3, 5, 7, 8}, // u4LPFConvergeTable[AE_CCT_STRENGTH_NUM]
            90,                // u4InDoorEV = 9.0, 10 base
            -10,    // i4BVOffset delta BV = value/10 
            64,                 // u4PreviewFlareOffset
            64,                 // u4CaptureFlareOffset
            0,    // u4CaptureFlareThres
            64,                 // u4VideoFlareOffset
            0,    // u4VideoFlareThres
            64,    // u4StrobeFlareOffset
            0,    // u4StrobeFlareThres
            0,    // u4PrvMaxFlareThres
            0,                 // u4PrvMinFlareThres
            0,    // u4VideoMaxFlareThres
            0,    // u4VideoMinFlareThres
            18,    // u4FlatnessThres    // 10 base for flatness condition.
            75                 // u4FlatnessStrength
         }
    },

    // AWB NVRAM
{								
        // AWB calibration data
	{							
            // rUnitGain (unit gain: 1.0 = 512)
		{						
                0,    // i4R
                0,    // i4G
                0    // i4B
		},						
            // rGoldenGain (golden sample gain: 1.0 = 512)
		{						
                0,    // i4R
                0,    // i4G
                0    // i4B
		},						
            // rTuningUnitGain (Tuning sample unit gain: 1.0 = 512)
		{						
                0,    // i4R
                0,    // i4G
                0    // i4B
		},						
            // rD65Gain (D65 WB gain: 1.0 = 512)
		{						
                947,    // i4R
                512,    // i4G
                738    // i4B
		}						
	},							
        // Original XY coordinate of AWB light source
	{							
           // Strobe
		{						
                92,    // i4X
                -362    // i4Y
		},						
            // Horizon
		{						
                -410,    // i4X
                -360    // i4Y
		},						
            // A
		{						
                -299,    // i4X
                -379    // i4Y
		},						
            // TL84
		{						
                -141,    // i4X
                -414    // i4Y
		},						
            // CWF
		{						
                -107,    // i4X
                -453    // i4Y
		},						
            // DNP
		{						
                7,    // i4X
                -385    // i4Y
		},						
            // D65
		{						
                92,    // i4X
                -362    // i4Y
		},						
            // DF
		{						
                0,    // i4X
                -396///0    // i4Y (TL/CWF = D65/DF) //[-396]//Carter.chen@2013-5-24
		}						
	},							
        // Rotated XY coordinate of AWB light source
	{							
            // Strobe
		{						
                79,    // i4X
                -365    // i4Y
		},						
            // Horizon
		{						
                -423,    // i4X
                -346    // i4Y
		},						
            // A
		{						
                -312,    // i4X
                -368    // i4Y
            },
    		// TL84
    		{
                -156,    // i4X
                -409    // i4Y
            },
            // CWF
            {
                -123,    // i4X
                -449    // i4Y
            },
            // DNP
            {
                -7,    // i4X
                -385    // i4Y
            },
            // D65
            {
                79,    // i4X
                -365    // i4Y
            },
            // DF
		{						
                0,    // i4X
                -396    // i4Y////Carter.chen@2013-5-24
		}						
	},							
        // AWB gain of AWB light source
	{							
            // Strobe 
		{						
                947,    // i4R
                512,    // i4G
                738    // i4B
            },
            // Horizon 
            {
                512,    // i4R
                548,    // i4G
                1555    // i4B
		},
            // A 
		{
                571,    // i4R
                512,    // i4G
                1283    // i4B
            },
            // TL84 
            {
                741,    // i4R
                512,    // i4G
                1084    // i4B
            },
            // CWF 
            {
                818,    // i4R
                512,    // i4G
                1093    // i4B
		},
            // DNP 
		{
                870,    // i4R
                512,    // i4G
                854    // i4B
            },
            // D65 
            {
                947,    // i4R
                512,    // i4G
                738    // i4B
            },
            // DF 
		{						
                512,    // i4R
                512,    // i4G
                512    // i4B
		}						
	},							
    	// Rotation matrix parameter
    	{
            2,    // i4RotationAngle
            256,    // i4Cos
            9    // i4Sin
    	},
        // Daylight locus parameter
        {
            -137,    // i4SlopeNumerator
            128    // i4SlopeDenominator
        },
        // AWB light area
        {
            // Strobe:FIXME
            {
            0,    // i4RightBound
            0,    // i4LeftBound
            0,    // i4UpperBound
            0    // i4LowerBound
            },
            // Tungsten
            {
            -206,    // i4RightBound
            -856,    // i4LeftBound
            -307,    // i4UpperBound
            -407    // i4LowerBound
            },
            // Warm fluorescent
            {
            -206,    // i4RightBound
            -856,    // i4LeftBound
            -407,    // i4UpperBound
            -527    // i4LowerBound
            },
            // Fluorescent
            {
            -57,    // i4RightBound
            -206,    // i4LeftBound
            -296,    // i4UpperBound
            -429    // i4LowerBound
            },
            // CWF
            {
            -57,    // i4RightBound
            -206,    // i4LeftBound
            -429,    // i4UpperBound
            -499    // i4LowerBound
            },
            // Daylight
            {
            104,    // i4RightBound
            -57,    // i4LeftBound
            -285,    // i4UpperBound
            -470    // i4LowerBound//Carter@2013-6-9
            },
            // Shade
            {
            464,    // i4RightBound
            104,    // i4LeftBound
            -285,    // i4UpperBound
            -445    // i4LowerBound
            },
            // Daylight Fluorescent//Carter@2013-6-9
            {
            0,    // i4RightBound
            0,    // i4LeftBound
            0,    // i4UpperBound
            0    // i4LowerBound
            }
        },
        // PWB light area
        {
            // Reference area
            {
            464,    // i4RightBound
            -856,    // i4LeftBound
            0,    // i4UpperBound
            -527    // i4LowerBound//Carter@2013-6-9
            },
            // Daylight
            {
            129,    // i4RightBound
            -57,    // i4LeftBound
            -285,    // i4UpperBound
            -470    // i4LowerBound
            },
            // Cloudy daylight
            {
            229,    // i4RightBound
            54,    // i4LeftBound
            -285,    // i4UpperBound
            -470    // i4LowerBound
            },
            // Shade
            {
            329,    // i4RightBound
            54,    // i4LeftBound
            -285,    // i4UpperBound
            -470    // i4LowerBound
            },
            // Twilight
            {
            -57,    // i4RightBound
            -217,    // i4LeftBound
            -285,    // i4UpperBound
            -470    // i4LowerBound
            },
            // Fluorescent
            {
            129,    // i4RightBound
            -256,    // i4LeftBound
            -315,    // i4UpperBound
            -499    // i4LowerBound
            },
            // Warm fluorescent
            {
            -212,    // i4RightBound
            -412,    // i4LeftBound
            -315,    // i4UpperBound
            -499    // i4LowerBound
            },
            // Incandescent
            {
            -212,    // i4RightBound
            -412,    // i4LeftBound
            -285,    // i4UpperBound
            -470    // i4LowerBound
            },
            // Gray World
		{						
            5000,    // i4RightBound
            -5000,    // i4LeftBound
            5000,    // i4UpperBound
            -5000    // i4LowerBound
		}						
	},							
        // PWB default gain	
	{							
            // Daylight
            {
            910,    // i4R
            512,    // i4G
            797    // i4B
            },
            // Cloudy daylight
            {
            1045,    // i4R
            512,    // i4G
            687    // i4B
            },
            // Shade
            {
            1115,    // i4R
            512,    // i4G
            641    // i4B
            },
            // Twilight
            {
            726,    // i4R
            512,    // i4G
            1015    // i4B
            },
            // Fluorescent
            {
            833,    // i4R
            512,    // i4G
            952    // i4B
            },
            // Warm fluorescent
            {
            602,    // i4R
            512,    // i4G
            1347    // i4B
            },
            // Incandescent
            {
            578,    // i4R
            512,    // i4G
            1297    // i4B
            },
            // Gray World
            {
            512,    // i4R
            512,    // i4G
            512    // i4B
            }
        },
        // AWB preference color	
        {
            // Tungsten
            {
            50,    // i4SliderValue
            3885    // i4OffsetThr
            },
            // Warm fluorescent	
            {
            50,    // i4SliderValue
            3885    // i4OffsetThr
            },
            // Shade
            {
            50,    // i4SliderValue
            341    // i4OffsetThr
            },
            // Daylight WB gain
            {
            800,    // i4R
            512,    // i4G
            800    // i4B
            },
            // Preference gain: strobe
            {
            512,    // i4R
            512,    // i4G
            512    // i4B
            },
            // Preference gain: tungsten
            {
            512,    // i4R
            512,    // i4G
            512    // i4B
            },
            // Preference gain: warm fluorescent
            {
            512,    // i4R
            512,    // i4G
            512    // i4B
		},						
            // Preference gain: fluorescent
		{						
            512,    // i4R
            512,    // i4G
            512    // i4B
		},						
            // Preference gain: CWF
		{						
            512,    // i4R
            512,    // i4G
            512    // i4B
		},						
            // Preference gain: daylight
		{						
            512,    // i4R
            512,    // i4G
            512    // i4B
		},						
            // Preference gain: shade
		{						
            512,    // i4R
            512,    // i4G
            512    // i4B
		},						
            // Preference gain: daylight fluorescent
		{						
            512,    // i4R
            512,    // i4G
            512    // i4B
		}						
	},							
        {// CCT estimation
            {// CCT
                2300,    // i4CCT[0]
                2850,    // i4CCT[1]
                4100,    // i4CCT[2]
                5100,    // i4CCT[3]
                6500    // i4CCT[4]
		},						
            {// Rotated X coordinate
                -502,    // i4RotatedXCoordinate[0]
                -391,    // i4RotatedXCoordinate[1]
                -235,    // i4RotatedXCoordinate[2]
                -86,    // i4RotatedXCoordinate[3]
    			0	// i4RotatedXCoordinate[4]
		}						
	}							


    },
	{0}
};

#include INCLUDE_FILENAME_ISP_LSC_PARAM
//};  //  namespace


typedef NSFeature::RAWSensorInfo<SENSOR_ID> SensorInfoSingleton_T;


namespace NSFeature {
template <>
UINT32
SensorInfoSingleton_T::
impGetDefaultData(CAMERA_DATA_TYPE_ENUM const CameraDataType, VOID*const pDataBuf, UINT32 const size) const
{
    UINT32 dataSize[CAMERA_DATA_TYPE_NUM] = {sizeof(NVRAM_CAMERA_ISP_PARAM_STRUCT),
                                             sizeof(NVRAM_CAMERA_3A_STRUCT),
                                             sizeof(NVRAM_CAMERA_SHADING_STRUCT),
                                             sizeof(NVRAM_LENS_PARA_STRUCT),
                                             sizeof(AE_PLINETABLE_T)};

    if (CameraDataType > CAMERA_DATA_AE_PLINETABLE || NULL == pDataBuf || (size < dataSize[CameraDataType]))
    {
        return 1;
    }

    switch(CameraDataType)
    {
        case CAMERA_NVRAM_DATA_ISP:
            memcpy(pDataBuf,&CAMERA_ISP_DEFAULT_VALUE,sizeof(NVRAM_CAMERA_ISP_PARAM_STRUCT));
            break;
        case CAMERA_NVRAM_DATA_3A:
            memcpy(pDataBuf,&CAMERA_3A_NVRAM_DEFAULT_VALUE,sizeof(NVRAM_CAMERA_3A_STRUCT));
            break;
        case CAMERA_NVRAM_DATA_SHADING:
            memcpy(pDataBuf,&CAMERA_SHADING_DEFAULT_VALUE,sizeof(NVRAM_CAMERA_SHADING_STRUCT));
            break;
        case CAMERA_DATA_AE_PLINETABLE:
            memcpy(pDataBuf,&g_PlineTableMapping,sizeof(AE_PLINETABLE_T));
            break;
        default:
            break;
    }
    return 0;
}}; // NSFeature


