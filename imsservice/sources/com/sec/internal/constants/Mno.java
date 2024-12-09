package com.sec.internal.constants;

import android.os.SemSystemProperties;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.tapi.UserConsentProviderContract;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.MNO;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class Mno {
    public static Mno A1_BULGARIA = null;
    public static Mno A1_SVN = null;
    public static Mno AIRBUS_MEXICO = null;
    public static Mno AIRTEL = null;
    public static Mno AIRTEL_LK = null;
    public static Mno AIRTEL_NIGERIA = null;
    public static Mno AIRTEL_TANZANIA = null;
    public static Mno AIRTEL_UGANDA = null;
    public static Mno AIS = null;
    public static Mno ALCOM_FINLAND = null;
    public static Mno ALE_ECUADOR = null;
    public static Mno ALFA = null;
    public static Mno ALIV_BAHAMAS = null;
    public static Mno ALMADAR_LIBYA = null;
    public static Mno ALTAN_MEXICO = null;
    public static Mno ALTEL_KAZAKHSTAN = null;
    public static Mno ALTICE = null;
    public static Mno AMERICANET_BRAZIL = null;
    public static Mno ANTEL_URUGUAY = null;
    public static Mno APT = null;
    public static Mno ARQIA_BRAZIL = null;
    public static Mno ASIACELL_IRAQ = null;
    public static Mno ASTCA = null;
    public static Mno ASTCA_US = null;
    public static Mno ATHEER_UAE = null;
    public static Mno ATT = null;
    public static Mno ATT_MEXICO = null;
    public static Mno AUSTRIA_A1 = null;
    public static Mno AVANTEL_COLOMBIA = null;
    public static Mno AVEA_TURKEY = null;
    public static Mno AZERCELL_AZ = null;
    public static Mno Airtel_KENYA = null;
    public static Mno Airtel_ZAMBIA = null;
    public static Mno Annatel = null;
    public static Mno BAKCELL_AZ = null;
    public static Mno BANGLALINK = null;
    public static Mno BATELCO_BAHRAIN = null;
    public static Mno BEELINE_KAZAKHSTAN = null;
    public static Mno BEELINE_KYRGYZSTAN = null;
    public static Mno BEELINE_RUSSIA = null;
    public static Mno BEELINE_UZ = null;
    public static Mno BELL = null;
    public static Mno BEST = null;
    public static Mno BITE_LATVIA = null;
    public static Mno BITE_LITHUANIA = null;
    public static Mno BLUESKY = null;
    public static Mno BMOBILE_TRINIDAD = null;
    public static Mno BOG = null;
    public static Mno BRISANET_BRAZIL = null;
    public static Mno BSNL = null;
    public static Mno BTC_BAHAMAS = null;
    public static Mno BTOP = null;
    public static Mno CABLE_BARBADOS = null;
    public static Mno CABLE_JAMAICA = null;
    public static Mno CABLE_PANAMA = null;
    public static Mno CABLE_SEYCHELLES = null;
    public static Mno CBN = null;
    public static Mno CELCOM = null;
    public static Mno CELLCARD_CAMBODIA = null;
    public static Mno CELLCOM = null;
    public static Mno CELLC_SOUTHAFRICA = null;
    public static Mno CELLONE_BERMUDA = null;
    public static Mno CHATR = null;
    public static Mno CHT = null;
    public static Mno CLARO_ARGENTINA = null;
    public static Mno CLARO_BRAZIL = null;
    public static Mno CLARO_CHILE = null;
    public static Mno CLARO_COLOMBIA = null;
    public static Mno CLARO_COSTARICA = null;
    public static Mno CLARO_DOMINICAN = null;
    public static Mno CLARO_ECUADOR = null;
    public static Mno CLARO_ELSALVADOR = null;
    public static Mno CLARO_GUATEMALA = null;
    public static Mno CLARO_HONDURAS = null;
    public static Mno CLARO_NICARAGUA = null;
    public static Mno CLARO_PANAMA = null;
    public static Mno CLARO_PARAGUAY = null;
    public static Mno CLARO_PERU = null;
    public static Mno CLARO_PUERTO = null;
    public static Mno CLARO_URUGUAY = null;
    public static Mno CLO = null;
    public static Mno CMCC = null;
    public static Mno CMHK = null;
    public static Mno COOPVOCE_ITALY = null;
    public static Mno CORIOLIS = null;
    public static Mno CSL = null;
    public static Mno CTC = null;
    public static Mno CTCMO = null;
    public static Mno CTF = null;
    public static Mno CTG = null;
    public static Mno CTM = null;
    public static Mno CU = null;
    public static Mno CUHK = null;
    public static Mno DAUPHIN_STMARTIN = null;
    public static Mno DEFAULT = null;
    public static Mno DHIRAAGU_MV = null;
    public static Mno DIGI = null;
    public static Mno DIGI_BELIZE = null;
    public static Mno DIGI_HUNGARY = null;
    public static Mno DIGI_SPAIN = null;
    public static Mno DISH = null;
    public static Mno DITO = null;
    public static Mno DLOG = null;
    public static Mno DNA_FINLAND = null;
    public static Mno DOCOMO = null;
    public static Mno DPAC = null;
    public static Mno DST_BN = null;
    public static Mno DTAC = null;
    public static Mno DU_UAE = null;
    public static Mno EASTLINK = null;
    public static Mno ECONET_LESOTHO = null;
    public static Mno EDF = null;
    public static Mno EE = null;
    public static Mno EE_ESN = null;
    public static Mno ELISA_EE = null;
    public static Mno ELISA_FINLAND = null;
    public static Mno EMTEL_MAURITIUS = null;
    public static Mno ENET_GUYANA = null;
    public static Mno ENTEL_BOLIVIA = null;
    public static Mno ENTEL_CHILE = null;
    public static Mno ENTEL_PERU = null;
    public static Mno EPIC_CYPRUS = null;
    public static Mno EPIC_MT = null;
    public static Mno ERATE_NORWAY = null;
    public static Mno ERILLISVERKOT_FINLAND = null;
    public static Mno ETISALAT_AFG = null;
    public static Mno ETISALAT_EG = null;
    public static Mno ETISALAT_UAE = null;
    public static Mno FASTWEB_ITALY = null;
    public static Mno FET = null;
    public static Mno FINETWORK_SPAIN = null;
    public static Mno FIZ = null;
    public static Mno FREE = null;
    public static Mno FREE_SENEGAL = null;
    public static Mno GAMMA = null;
    public static Mno GCF = null;
    public static String GCF_OPERATOR_CODE = "00101";
    public static String GCF_OPERATOR_NAME = "GCF";
    public static Mno GCI = null;
    public static String GC_BLOCK_EXTENSION = "@BLOCKGC";
    public static char GC_DELIMITER = '@';
    public static Mno GENERIC = null;
    public static Mno GENERIC_IR92 = null;
    public static Mno GEOVERSE = null;
    public static Mno GIBTELECOM_GIBRALTAR = null;
    public static Mno GLOBE_PH = null;
    public static Mno GMOBILE_MONGOLIA = null;
    public static Mno GOOGLEGC = null;
    public static Mno GO_MT = null;
    public static Mno GRAMEENPHONE = null;
    public static Mno GTA = null;
    public static Mno H3G = null;
    public static Mno H3G_AT = null;
    public static Mno H3G_DK = null;
    public static Mno H3G_IRELAND = null;
    public static Mno H3G_SE = null;
    public static Mno HK3 = null;
    public static Mno HORMUUD_SOMALIA = null;
    public static Mno HOTMOBILE = null;
    public static Mno HUBONE = null;
    public static Mno HUTCH_LK = null;
    public static Mno ICENET_NORWAY = null;
    public static Mno IDEA_INDIA = null;
    public static Mno ILIAD_ITALY = null;
    public static Mno IMAGINE_BN = null;
    public static Mno INDOSAT_ID = null;
    public static Mno INTEROP = null;
    public static Mno INWI_MOROCCO = null;
    public static Mno ITE = null;
    public static Mno JAZZ_PAK = null;
    public static Mno JTL_KENYA = null;
    public static Mno Jambotel_KENYA = null;
    public static Mno KDDI = null;
    public static Mno KOODO = null;
    public static Mno KPN_NED = null;
    public static Mno KT = null;
    public static Mno KYIVSTAR_UA = null;
    public static Mno LAOTEL = null;
    public static Mno LGU = null;
    public static Mno LIBERTY_PUERTO = null;
    public static Mno LIBYANAMOBILE_LIBYA = null;
    public static Mno LIFECELL_UA = null;
    public static Mno LMT_LATVIA = null;
    private static final String LOG_TAG = "Mno";
    public static Mno LOWI_SPAIN = null;
    public static Mno LYCA = null;
    public static Mno LYCA_ITALY = null;
    public static Mno LYCA_SWEDEN = null;
    public static Mno MACAU_SMARTONE = null;
    public static Mno MACAU_THREE = null;
    public static Mno MAGTICOM_GE = null;
    public static Mno MANX = null;
    public static Mno MAROC_MOROCCO = null;
    public static Mno MASCOM_BOTSWANA = null;
    public static Mno MAXIS_MY = null;
    public static Mno MCCI_IRAN = null;
    public static Mno MDMN = null;
    public static Mno MEGACOM_KYRGYZSTAN = null;
    public static Mno MEGAFON_RUSSIA = null;
    public static Mno MEGAFON_TAJIKISTAN = null;
    public static Mno MEO_PORTUGAL = null;
    public static Mno METEOR_IRELAND = null;
    public static Mno METFONE_CAMBODIA = null;
    public static Mno MOBICOM_MONGOLIA = null;
    public static Mno MOBIFONE = null;
    public static Mno MOBILEONE = null;
    public static Mno MOBILICITY = null;
    public static Mno MOBILY_KSA = null;
    public static Mno MOBITEL_LK = null;
    public static Mno MOBIUZ_UZ = null;
    public static String MOCK_MNONAME_PROPERTY = "persist.ims.mock.mnoname";
    public static String MOCK_MNO_PROPERTY = "persist.ims.mock.mno";
    public static Mno MOD_QATAR = null;
    public static Mno MOI = null;
    public static Mno MOLDCELL_MOLDOVA = null;
    public static Mno MOTIV_RUSSIA = null;
    public static Mno MOVISTAR_ARGENTINA = null;
    public static Mno MOVISTAR_CHILE = null;
    public static Mno MOVISTAR_COLOMBIA = null;
    public static Mno MOVISTAR_ECUADOR = null;
    public static Mno MOVISTAR_MEXICO = null;
    public static Mno MOVISTAR_PERU = null;
    public static Mno MOVISTAR_URUGUAY = null;
    public static Mno MOVITEL_MOZAMBIQUE = null;
    public static Mno MPT_MM = null;
    public static Mno MTEL_BOSNIA = null;
    public static Mno MTEL_ME = null;
    public static Mno MTML_MAURITIUS = null;
    public static Mno MTN_COTEDIVOIRE = null;
    public static Mno MTN_DRC = null;
    public static Mno MTN_GHANA = null;
    public static Mno MTN_IRAN = null;
    public static Mno MTN_NIGERIA = null;
    public static Mno MTN_SOUTHAFRICA = null;
    public static Mno MTN_UGANDA = null;
    public static Mno MTN_ZAMBIA = null;
    public static Mno MTS_ARMENIA = null;
    public static Mno MTS_BY = null;
    public static Mno MTS_RUSSIA = null;
    public static char MVNO_DELIMITER = ':';
    public static Mno MVNO_NED;
    public static Mno MYTEL;
    public static Mno NAMASTE;
    public static Mno NAR_AZ;
    public static Mno NCELL;
    public static Mno NEDAA_UAE;
    public static Mno NOS_PORTUGAL;
    public static Mno NOVA_IS;
    public static Mno NRJ_FRANCE;
    public static Mno NTEL_NIGERIA;
    public static Mno OI_BRAZIL;
    public static Mno OMANTEL_OMAN;
    public static Mno ONDO_MONGOLIA;
    public static Mno ONENONE;
    public static Mno OOREDOO_ALGERIA;
    public static Mno OOREDOO_KUWAIT;
    public static Mno OOREDOO_MM;
    public static Mno OOREDOO_MV;
    public static Mno OOREDOO_OMAN;
    public static Mno OOREDOO_QATAR;
    public static Mno OOREDOO_TUNISIA;
    public static Mno OPTUS;
    public static Mno ORANGE;
    public static Mno ORANGE_BELGIUM;
    public static Mno ORANGE_COTEDIVOIRE;
    public static Mno ORANGE_DOMINICANA;
    public static Mno ORANGE_EG;
    public static Mno ORANGE_JO;
    public static Mno ORANGE_LIBERIA;
    public static Mno ORANGE_LUXEMBOURG;
    public static Mno ORANGE_MOLDOVA;
    public static Mno ORANGE_MOROCCO;
    public static Mno ORANGE_POLAND;
    public static Mno ORANGE_ROMANIA;
    public static Mno ORANGE_SENEGAL;
    public static Mno ORANGE_SLOVAKIA;
    public static Mno ORANGE_SPAIN;
    public static Mno ORANGE_SWITZERLAND;
    public static Mno Orange_TUNISIA;
    public static Mno P1;
    public static Mno PARADISE_BERMUDA;
    public static Mno PCCW;
    public static Mno PCL;
    public static Mno PERSONAL_ARGENTINA;
    public static Mno PERSONAL_PARAGUAY;
    public static Mno PLAY;
    public static Mno PLINTRON_ITALY;
    public static Mno PLUS_POLAND;
    public static Mno POST_LUXEMBOURG;
    public static Mno PRIMETEL_CY;
    public static Mno PROGRESIF_BN;
    public static Mno PROXIMUS;
    public static Mno PTR;
    public static Mno RAIN_SOUTHAFRICA;
    public static Mno RAKUTEN_JAPAN;
    public static Mno RDS_ROMANIA;
    public static Mno REDBULL_KSA;
    public static Mno RJIL;
    public static Mno ROBI;
    public static Mno ROGERS;
    public static Mno SAFARICOM_ETHIOPIA;
    public static Mno SAFARICOM_KENYA;
    public static Mno SALAM_KSA;
    public static Mno SALT_LI;
    public static Mno SAMSUNG_RCS;
    public static Mno SASKTEL;
    public static Mno SASKTELLAB;
    public static Mno SBERBANK_RUSSIA;
    public static Mno SEATEL_CAMBODIA;
    public static Mno SFR;
    public static Mno SIMINN_IS;
    public static Mno SINGTEL;
    public static Mno SKT;
    public static Mno SKY;
    public static Mno SKY_IRELAND;
    public static Mno SMARTFREN;
    public static Mno SMARTONE;
    public static Mno SMARTY;
    public static Mno SMART_CAMBODIA;
    public static Mno SMART_PH;
    public static Mno SMILE_NIGERIA;
    public static Mno SMILE_TANZANIA;
    public static Mno SMILE_UGANDA;
    public static Mno SOFTBANK;
    public static Mno SOMNET_SOMALIA;
    public static Mno SPARK;
    public static Mno SPM;
    public static Mno SPRINT;
    public static Mno SPUSU;
    public static Mno SPUSU_AUSTRIA;
    public static Mno SPUSU_ITALY;
    public static Mno STARHUB;
    public static Mno STC_KSA;
    public static Mno SUDANI_SD;
    public static Mno SUNRISE_CH;
    public static Mno SUPERDRUG;
    public static Mno SURE;
    public static Mno SWAN_SLOVAKIA;
    public static Mno SWISSCOM;
    public static Mno T2_SVN;
    public static Mno TANGO_LUXEMBOURG;
    public static Mno TANGO_UK;
    public static Mno TANGO_US;
    public static Mno TASHICELL;
    public static Mno TATA_UK;
    public static Mno TATTELECOM_RUSSIA;
    public static Mno TCE;
    public static Mno TDC_DK;
    public static Mno TELAVOX_SWEDEN;
    public static Mno TELE2NL;
    public static Mno TELE2_EE;
    public static Mno TELE2_KAZAKHSTAN;
    public static Mno TELE2_LATVIA;
    public static Mno TELE2_LITHUANIA;
    public static Mno TELE2_RUSSIA;
    public static Mno TELE2_SWE;
    public static Mno TELECOM_ANDORRA;
    public static Mno TELECOM_BHUTAN;
    public static Mno TELECOM_BOSNIA;
    public static Mno TELECOM_ITALY;
    public static Mno TELECOM_LI;
    public static Mno TELECOM_MAURITIUS;
    public static Mno TELECOM_MONACO;
    public static Mno TELECOM_SE;
    public static Mno TELEFONICA_CZ;
    public static Mno TELEFONICA_GERMANY;
    public static Mno TELEFONICA_SLOVAKIA;
    public static Mno TELEFONICA_SPAIN;
    public static Mno TELEFONICA_UK;
    public static Mno TELEFONICA_UK_LAB;
    public static Mno TELEKOM_ALBANIA;
    public static Mno TELEKOM_SERBIA;
    public static Mno TELEKOM_SVN;
    public static Mno TELEMACH_CROATIA;
    public static Mno TELEMACH_SVN;
    public static Mno TELENET_BELGIUM;
    public static Mno TELENOR_BULGARIA;
    public static Mno TELENOR_DK;
    public static Mno TELENOR_HUNGARY;
    public static Mno TELENOR_MM;
    public static Mno TELENOR_MONTENEGRO;
    public static Mno TELENOR_NORWAY;
    public static Mno TELENOR_PAK;
    public static Mno TELENOR_SERBIA;
    public static Mno TELENOR_SWE;
    public static Mno TELEPOST_GREENLAND;
    public static Mno TELIA_DK;
    public static Mno TELIA_EE;
    public static Mno TELIA_FINLAND;
    public static Mno TELIA_NORWAY;
    public static Mno TELIA_SWE;
    public static Mno TELKOMSEL;
    public static Mno TELKOM_SOUTHAFRICA;
    public static Mno TELMA_MADAGASCAR;
    public static Mno TELSTRA;
    public static Mno TELUS;
    public static Mno TIGO_BOLIVIA;
    public static Mno TIGO_COLOMBIA;
    public static Mno TIGO_ELSALVADOR;
    public static Mno TIGO_GUATEMALA;
    public static Mno TIGO_HONDURAS;
    public static Mno TIGO_NICARAGUA;
    public static Mno TIGO_PANAMA;
    public static Mno TIGO_PARAGUAY;
    public static Mno TIGO_TANZANIA;
    public static Mno TIM_BRAZIL;
    public static Mno TMOBILE;
    public static Mno TMOBILE_AUSTRIA;
    public static Mno TMOBILE_CROATIA;
    public static Mno TMOBILE_CZ;
    public static Mno TMOBILE_GREECE;
    public static Mno TMOBILE_HUNGARY;
    public static Mno TMOBILE_ME;
    public static Mno TMOBILE_MK;
    public static Mno TMOBILE_NED;
    public static Mno TMOBILE_PL;
    public static Mno TMOBILE_ROMANIA;
    public static Mno TMOBILE_SLOVAKIA;
    public static Mno TMOUS;
    public static Mno TOGOCOM_TOGO;
    public static Mno TOUCH;
    public static Mno TPG_SG;
    public static Mno TRACFONE_CLARO;
    public static Mno TRI_ID;
    public static Mno TRUEMOVE;
    public static Mno TRUPHONE_GERMANY;
    public static Mno TRUPHONE_HK;
    public static Mno TRUPHONE_NED;
    public static Mno TRUPHONE_POLAND;
    public static Mno TRUPHONE_SPAIN;
    public static Mno TRUPHONE_UK;
    public static Mno TSTAR;
    public static Mno TUNISIETELECOM_TUNISIA;
    public static Mno TURKCELL_TURKEY;
    public static Mno TUVALU;
    public static Mno TWM;
    public static Mno TWO_DEGREE;
    public static Mno Telecom_ETHIOPIA;
    public static Mno Telzar;
    public static Mno UCELL_UZ;
    public static Mno UFONE_PAK;
    public static Mno UMNIAH_JO;
    public static Mno UMOBILE;
    public static Mno UNIFIQUE_BRAZIL;
    public static Mno UNION;
    public static Mno UNITEL;
    public static Mno UNN_BN;
    public static Mno UPC_CH;
    public static Mno USCC;
    public static Mno UTS_CURACAO;
    public static Mno UZTELECOM_UZ;
    public static Mno Unitel_ANGOLA;
    public static Mno VELCOM_BY;
    public static Mno VIANOVA_ITALY;
    public static Mno VIETNAMOBILE;
    public static Mno VIETTEL;
    public static Mno VIMLA_SWE;
    public static Mno VINAPHONE;
    public static Mno VIP_MACEDONIA;
    public static Mno VIP_SERBIA;
    public static Mno VIRGIN;
    public static Mno VIRGIN_KSA;
    public static Mno VIRGIN_KUWAIT;
    public static Mno VITI;
    public static Mno VIVACOM_BULGARIA;
    public static Mno VIVA_BAHRAIN;
    public static Mno VIVA_DOMINICAN;
    public static Mno VIVA_KUWAIT;
    public static Mno VIVO_BRAZIL;
    public static Mno VODACOM_DRC;
    public static Mno VODACOM_LESOTHO;
    public static Mno VODACOM_MOZAMBIQUE;
    public static Mno VODACOM_SOUTHAFRICA;
    public static Mno VODACOM_TANZANIA;
    public static Mno VODAFONE;
    public static Mno VODAFONEFIJI;
    public static Mno VODAFONEPNG_NEWZEALAND;
    public static Mno VODAFONE_ALBANIA;
    public static Mno VODAFONE_AUSTRALIA;
    public static Mno VODAFONE_CROATIA;
    public static Mno VODAFONE_CY;
    public static Mno VODAFONE_CZ;
    public static Mno VODAFONE_EG;
    public static Mno VODAFONE_GHANA;
    public static Mno VODAFONE_GREECE;
    public static Mno VODAFONE_HUNGARY;
    public static Mno VODAFONE_INDIA;
    public static Mno VODAFONE_IRELAND;
    public static Mno VODAFONE_IS;
    public static Mno VODAFONE_ITALY;
    public static Mno VODAFONE_NETHERLAND;
    public static Mno VODAFONE_NEWZEALAND;
    public static Mno VODAFONE_OMAN;
    public static Mno VODAFONE_PORTUGAL;
    public static Mno VODAFONE_QATAR;
    public static Mno VODAFONE_ROMANIA;
    public static Mno VODAFONE_SPAIN;
    public static Mno VODAFONE_TURKEY;
    public static Mno VODAFONE_UA;
    public static Mno VODAFONE_UK;
    public static Mno VTR;
    public static Mno VTR_CHILE;
    public static Mno VZW;
    public static Mno WEBBING;
    public static Mno WECOM;
    public static Mno WE_EG;
    public static Mno WIND;
    public static Mno WINDTRE;
    public static Mno WIND_GREECE;
    public static Mno WOM_CHILE;
    public static Mno WOM_COLOMBIA;
    public static Mno XL_ID;
    public static Mno XPLORE;
    public static Mno YEMEN_YE;
    public static Mno YOIGO_SPAIN;
    public static Mno YTL;
    public static Mno ZAIN_BAHRAIN;
    public static Mno ZAIN_IRAQ;
    public static Mno ZAIN_JO;
    public static Mno ZAIN_KSA;
    public static Mno ZAIN_KUWAIT;
    public static Mno ZANTEL_TANZANIA;
    public static Mno ZEB;
    public static Mno ZEOP_FR;
    public static Mno ZONG_PAK;
    public static Mno ZTAR;
    protected static Set<Mno> sTable = new HashSet();
    private Country mCountry;
    private String mName;
    private Region mRegion;
    private String mSalesCode;

    public enum Region {
        GCF,
        EAST_ASIA,
        SOUTH_EAST_ASIA,
        SOUTH_WEST_ASIA,
        MIDDLE_EAST,
        EUROPE,
        NORTH_AMERICA,
        SOUTH_AMERICA,
        AFRICA,
        OCEANIA,
        END_OF_REGION
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'CHINA' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class Country {
        private static final /* synthetic */ Country[] $VALUES;
        public static final Country AFGHANISTAN;
        public static final Country ALBANIA;
        public static final Country ALGERIA;
        public static final Country ANDORRA;
        public static final Country ANGOLA;
        public static final Country ARGENTINA;
        public static final Country ARMENIA;
        public static final Country AUSTRALIA;
        public static final Country AUSTRIA;
        public static final Country AZERBAIJAN;
        public static final Country BAHAMAS;
        public static final Country BAHRAIN;
        public static final Country BANGLADESH;
        public static final Country BARBADOS;
        public static final Country BELARUS;
        public static final Country BELGIUM;
        public static final Country BELIZE;
        public static final Country BERMUDA;
        public static final Country BHUTAN;
        public static final Country BOLIVIA;
        public static final Country BOSNIA;
        public static final Country BOTSWANA;
        public static final Country BRAZIL;
        public static final Country BRUNEI;
        public static final Country BULGARIA;
        public static final Country CAMBODIA;
        public static final Country CANADA;
        public static final Country CHILE;
        public static final Country CHINA;
        public static final Country COLOMBIA;
        public static final Country COSTA_RICA;
        public static final Country COTEDIVOIRE;
        public static final Country CROATIA;
        public static final Country CURACAO;
        public static final Country CYPRUS;
        public static final Country CZECH;
        public static final Country DENMARK;
        public static final Country DOMINICAN;
        public static final Country DRC;
        public static final Country ECUADOR;
        public static final Country EGYPT;
        public static final Country EL_SALVADOR;
        public static final Country END_OF_COUNTRY;
        public static final Country ESTONIA;
        public static final Country ETHIOPIA;
        public static final Country FINLAND;
        public static final Country FRANCE;
        public static final Country GCF = new Country("GCF", 0, Region.GCF, "GCF");
        public static final Country GEORGIA;
        public static final Country GERMANY;
        public static final Country GHANA;
        public static final Country GIBRALTAR;
        public static final Country GREECE;
        public static final Country GREENLAND;
        public static final Country GUATEMALA;
        public static final Country GUYANA;
        public static final Country HONDURAS;
        public static final Country HONGKONG;
        public static final Country HUNGARY;
        public static final Country ICELAND;
        public static final Country INDIA;
        public static final Country INDONESIA;
        public static final Country IRAN;
        public static final Country IRAQ;
        public static final Country IRELAND;
        public static final Country ISRAEL;
        public static final Country ITALY;
        public static final Country JAMAICA;
        public static final Country JAPAN;
        public static final Country JORDAN;
        public static final Country KAZAKHSTAN;
        public static final Country KENYA;
        public static final Country KOREA;
        public static final Country KSA;
        public static final Country KUWAIT;
        public static final Country KYRGYZSTAN;
        public static final Country LAOS;
        public static final Country LATVIA;
        public static final Country LEBANON;
        public static final Country LESOTHO;
        public static final Country LIBERIA;
        public static final Country LIBYA;
        public static final Country LIECHTENSTEIN;
        public static final Country LITHUANIA;
        public static final Country LUXEMBOURG;
        public static final Country MACAU;
        public static final Country MACEDONIA;
        public static final Country MADAGASCAR;
        public static final Country MALAYSIA;
        public static final Country MALDIVES;
        public static final Country MALTA;
        public static final Country MAURITIUS;
        public static final Country MEXICO;
        public static final Country MOLDOVA;
        public static final Country MONACO;
        public static final Country MONGOLIA;
        public static final Country MONTENEGRO;
        public static final Country MOROCCO;
        public static final Country MOZAMBIQUE;
        public static final Country MYANMAR;
        public static final Country NEPAL;
        public static final Country NETHERLANDS;
        public static final Country NEWZEALAND;
        public static final Country NICARAGUA;
        public static final Country NIGERIA;
        public static final Country NORWAY;
        public static final Country OMAN;
        public static final Country PAKISTAN;
        public static final Country PANAMA;
        public static final Country PARAGUAY;
        public static final Country PERU;
        public static final Country PHILIPPINES;
        public static final Country POLAND;
        public static final Country PORTUGAL;
        public static final Country PUERTO;
        public static final Country QATAR;
        public static final Country ROMANIA;
        public static final Country RUSSIA;
        public static final Country SENEGAL;
        public static final Country SERBIA;
        public static final Country SEYCHELLES;
        public static final Country SINGAPORE;
        public static final Country SLOVAKIA;
        public static final Country SLOVENIA;
        public static final Country SOMALIA;
        public static final Country SOUTHAFRICA;
        public static final Country SPAIN;
        public static final Country SRILANKA;
        public static final Country STMARTIN;
        public static final Country SUDAN;
        public static final Country SWEDEN;
        public static final Country SWITZERLAND;
        public static final Country TAIWAN;
        public static final Country TAJIKISTAN;
        public static final Country TANZANIA;
        public static final Country THAILAND;
        public static final Country TOGO;
        public static final Country TRINIDAD;
        public static final Country TUNISIA;
        public static final Country TURKEY;
        public static final Country UAE;
        public static final Country UGANDA;
        public static final Country UK;
        public static final Country UKRAINE;
        public static final Country URUGUAY;
        public static final Country US;
        public static final Country UZBEKISTAN;
        public static final Country VIETNAM;
        public static final Country YEMEN;
        public static final Country ZAMBIA;
        private final String countryIso;
        private final Region region;

        private static /* synthetic */ Country[] $values() {
            return new Country[]{GCF, CHINA, HONGKONG, JAPAN, KOREA, MACAU, TAIWAN, CAMBODIA, INDONESIA, MALAYSIA, PHILIPPINES, SINGAPORE, THAILAND, VIETNAM, MYANMAR, LAOS, BRUNEI, INDIA, NEPAL, SRILANKA, MALDIVES, BANGLADESH, BHUTAN, ISRAEL, KUWAIT, TURKEY, QATAR, UAE, OMAN, IRAN, IRAQ, KSA, PAKISTAN, AFGHANISTAN, BAHRAIN, EGYPT, JORDAN, LEBANON, YEMEN, ALBANIA, ANDORRA, ARMENIA, AUSTRIA, AZERBAIJAN, BELARUS, BELGIUM, BOSNIA, BULGARIA, CROATIA, CYPRUS, CZECH, DENMARK, ESTONIA, FINLAND, FRANCE, GEORGIA, GERMANY, GIBRALTAR, GREECE, GREENLAND, HUNGARY, ICELAND, IRELAND, ITALY, KAZAKHSTAN, KYRGYZSTAN, LATVIA, LIECHTENSTEIN, LITHUANIA, LUXEMBOURG, MACEDONIA, MOLDOVA, MONGOLIA, MONACO, MONTENEGRO, NETHERLANDS, NORWAY, POLAND, PORTUGAL, ROMANIA, RUSSIA, SERBIA, SLOVAKIA, SLOVENIA, SPAIN, SWEDEN, SWITZERLAND, TAJIKISTAN, UK, UKRAINE, UZBEKISTAN, MALTA, CANADA, US, ARGENTINA, BAHAMAS, BARBADOS, BRAZIL, BERMUDA, BELIZE, COLOMBIA, COSTA_RICA, ECUADOR, EL_SALVADOR, DOMINICAN, GUATEMALA, GUYANA, HONDURAS, JAMAICA, MEXICO, NICARAGUA, PANAMA, PERU, CHILE, BOLIVIA, URUGUAY, PUERTO, PARAGUAY, CURACAO, TRINIDAD, STMARTIN, LIBYA, MOROCCO, NIGERIA, SOUTHAFRICA, TOGO, TANZANIA, UGANDA, ZAMBIA, GHANA, COTEDIVOIRE, KENYA, SENEGAL, TUNISIA, MOZAMBIQUE, LIBERIA, ETHIOPIA, LESOTHO, SUDAN, BOTSWANA, MAURITIUS, ANGOLA, ALGERIA, SEYCHELLES, DRC, MADAGASCAR, SOMALIA, AUSTRALIA, NEWZEALAND, END_OF_COUNTRY};
        }

        public static Country valueOf(String str) {
            return (Country) Enum.valueOf(Country.class, str);
        }

        public static Country[] values() {
            return (Country[]) $VALUES.clone();
        }

        static {
            Region region = Region.EAST_ASIA;
            CHINA = new Country("CHINA", 1, region, "CN");
            HONGKONG = new Country("HONGKONG", 2, region, "HK");
            JAPAN = new Country("JAPAN", 3, region, "JP");
            KOREA = new Country("KOREA", 4, region, "KR");
            MACAU = new Country("MACAU", 5, region, "MO");
            TAIWAN = new Country("TAIWAN", 6, region, "TW");
            Region region2 = Region.SOUTH_EAST_ASIA;
            CAMBODIA = new Country("CAMBODIA", 7, region2, "KH");
            INDONESIA = new Country("INDONESIA", 8, region2, UserConsentProviderContract.UserConsentList.ID);
            MALAYSIA = new Country("MALAYSIA", 9, region2, "MY");
            PHILIPPINES = new Country("PHILIPPINES", 10, region2, "PH");
            SINGAPORE = new Country("SINGAPORE", 11, region2, "SG");
            THAILAND = new Country("THAILAND", 12, region2, "TH");
            VIETNAM = new Country("VIETNAM", 13, region2, "VN");
            MYANMAR = new Country("MYANMAR", 14, region2, "MM");
            LAOS = new Country("LAOS", 15, region2, "LA");
            BRUNEI = new Country("BRUNEI", 16, region2, "BN");
            Region region3 = Region.SOUTH_WEST_ASIA;
            INDIA = new Country("INDIA", 17, region3, "IN");
            NEPAL = new Country("NEPAL", 18, region3, "NP");
            SRILANKA = new Country("SRILANKA", 19, region3, "LK");
            MALDIVES = new Country("MALDIVES", 20, region3, "MV");
            BANGLADESH = new Country("BANGLADESH", 21, region3, "BD");
            BHUTAN = new Country("BHUTAN", 22, region3, "BT");
            Region region4 = Region.MIDDLE_EAST;
            ISRAEL = new Country("ISRAEL", 23, region4, "IL");
            KUWAIT = new Country("KUWAIT", 24, region4, "KW");
            TURKEY = new Country("TURKEY", 25, region4, "TR");
            QATAR = new Country("QATAR", 26, region4, "QA");
            UAE = new Country("UAE", 27, region4, "AE");
            OMAN = new Country("OMAN", 28, region4, "OM");
            IRAN = new Country("IRAN", 29, region4, "IR");
            IRAQ = new Country("IRAQ", 30, region4, "IQ");
            KSA = new Country("KSA", 31, region4, "SA");
            PAKISTAN = new Country("PAKISTAN", 32, region4, "PK");
            AFGHANISTAN = new Country("AFGHANISTAN", 33, region4, "AF");
            BAHRAIN = new Country("BAHRAIN", 34, region4, "BH");
            EGYPT = new Country("EGYPT", 35, region4, "EG");
            JORDAN = new Country("JORDAN", 36, region4, "JO");
            LEBANON = new Country("LEBANON", 37, region4, "LB");
            YEMEN = new Country("YEMEN", 38, region4, "YE");
            Region region5 = Region.EUROPE;
            ALBANIA = new Country("ALBANIA", 39, region5, "AL");
            ANDORRA = new Country("ANDORRA", 40, region5, "AD");
            ARMENIA = new Country("ARMENIA", 41, region5, "AM");
            AUSTRIA = new Country("AUSTRIA", 42, region5, "AT");
            AZERBAIJAN = new Country("AZERBAIJAN", 43, region5, "AZ");
            BELARUS = new Country("BELARUS", 44, region5, "BY");
            BELGIUM = new Country("BELGIUM", 45, region5, "BE");
            BOSNIA = new Country("BOSNIA", 46, region5, "BA");
            BULGARIA = new Country("BULGARIA", 47, region5, "BG");
            CROATIA = new Country("CROATIA", 48, region5, "HR");
            CYPRUS = new Country("CYPRUS", 49, region5, "CY");
            CZECH = new Country("CZECH", 50, region5, "CZ");
            DENMARK = new Country("DENMARK", 51, region5, "DK");
            ESTONIA = new Country("ESTONIA", 52, region5, "EE");
            FINLAND = new Country("FINLAND", 53, region5, "FI");
            FRANCE = new Country("FRANCE", 54, region5, "FR");
            GEORGIA = new Country("GEORGIA", 55, region5, "GE");
            GERMANY = new Country("GERMANY", 56, region5, "DE");
            GIBRALTAR = new Country("GIBRALTAR", 57, region5, "GI");
            GREECE = new Country("GREECE", 58, region5, "GR");
            GREENLAND = new Country("GREENLAND", 59, region5, "GL");
            HUNGARY = new Country("HUNGARY", 60, region5, "HU");
            ICELAND = new Country("ICELAND", 61, region5, "IS");
            IRELAND = new Country("IRELAND", 62, region5, "IE");
            ITALY = new Country("ITALY", 63, region5, "IT");
            KAZAKHSTAN = new Country("KAZAKHSTAN", 64, region5, "KZ");
            KYRGYZSTAN = new Country("KYRGYZSTAN", 65, region5, "KG");
            LATVIA = new Country("LATVIA", 66, region5, "LV");
            LIECHTENSTEIN = new Country("LIECHTENSTEIN", 67, region5, "LI");
            LITHUANIA = new Country("LITHUANIA", 68, region5, "LT");
            LUXEMBOURG = new Country("LUXEMBOURG", 69, region5, "LU");
            MACEDONIA = new Country("MACEDONIA", 70, region5, "MK");
            MOLDOVA = new Country("MOLDOVA", 71, region5, "MD");
            MONGOLIA = new Country("MONGOLIA", 72, region5, "MN");
            MONACO = new Country("MONACO", 73, region5, "MC");
            MONTENEGRO = new Country("MONTENEGRO", 74, region5, "ME");
            NETHERLANDS = new Country("NETHERLANDS", 75, region5, "NL");
            NORWAY = new Country("NORWAY", 76, region5, "NO");
            POLAND = new Country("POLAND", 77, region5, "PL");
            PORTUGAL = new Country("PORTUGAL", 78, region5, "PT");
            ROMANIA = new Country("ROMANIA", 79, region5, "RO");
            RUSSIA = new Country("RUSSIA", 80, region5, "RU");
            SERBIA = new Country("SERBIA", 81, region5, "RS");
            SLOVAKIA = new Country("SLOVAKIA", 82, region5, "SK");
            SLOVENIA = new Country("SLOVENIA", 83, region5, "SI");
            SPAIN = new Country("SPAIN", 84, region5, "ES");
            SWEDEN = new Country("SWEDEN", 85, region5, "SE");
            SWITZERLAND = new Country("SWITZERLAND", 86, region5, "CH");
            TAJIKISTAN = new Country("TAJIKISTAN", 87, region5, "TJ");
            UK = new Country("UK", 88, region5, "GB");
            UKRAINE = new Country("UKRAINE", 89, region5, "UA");
            UZBEKISTAN = new Country("UZBEKISTAN", 90, region5, "UZ");
            MALTA = new Country("MALTA", 91, region5, "MT");
            Region region6 = Region.NORTH_AMERICA;
            CANADA = new Country("CANADA", 92, region6, "CA");
            US = new Country("US", 93, region6, "US");
            Region region7 = Region.SOUTH_AMERICA;
            ARGENTINA = new Country("ARGENTINA", 94, region7, "AR");
            BAHAMAS = new Country("BAHAMAS", 95, region7, "BS");
            BARBADOS = new Country("BARBADOS", 96, region7, "BB");
            BRAZIL = new Country("BRAZIL", 97, region7, "BR");
            BERMUDA = new Country("BERMUDA", 98, region7, "BM");
            BELIZE = new Country("BELIZE", 99, region7, "BZ");
            COLOMBIA = new Country("COLOMBIA", 100, region7, "CO");
            COSTA_RICA = new Country("COSTA_RICA", 101, region7, "CR");
            ECUADOR = new Country("ECUADOR", 102, region7, DiagnosisConstants.RCSM_MTYP_EC);
            EL_SALVADOR = new Country("EL_SALVADOR", 103, region7, "SV");
            DOMINICAN = new Country("DOMINICAN", 104, region7, "DO");
            GUATEMALA = new Country("GUATEMALA", 105, region7, "GT");
            GUYANA = new Country("GUYANA", 106, region7, "GY");
            HONDURAS = new Country("HONDURAS", 107, region7, "HN");
            JAMAICA = new Country("JAMAICA", 108, region7, "JM");
            MEXICO = new Country("MEXICO", 109, region7, "MX");
            NICARAGUA = new Country("NICARAGUA", 110, region7, "NI");
            PANAMA = new Country("PANAMA", 111, region7, "PA");
            PERU = new Country("PERU", 112, region7, "PE");
            CHILE = new Country("CHILE", 113, region7, "CL");
            BOLIVIA = new Country("BOLIVIA", 114, region7, "BO");
            URUGUAY = new Country("URUGUAY", 115, region7, "UY");
            PUERTO = new Country("PUERTO", 116, region7, "PR");
            PARAGUAY = new Country("PARAGUAY", 117, region7, "PY");
            CURACAO = new Country("CURACAO", 118, region7, "CW");
            TRINIDAD = new Country("TRINIDAD", 119, region7, "TT");
            STMARTIN = new Country("STMARTIN", 120, region7, "MF");
            Region region8 = Region.AFRICA;
            LIBYA = new Country("LIBYA", 121, region8, "LY");
            MOROCCO = new Country("MOROCCO", 122, region8, "MA");
            NIGERIA = new Country("NIGERIA", 123, region8, "NG");
            SOUTHAFRICA = new Country("SOUTHAFRICA", 124, region8, "ZA");
            TOGO = new Country("TOGO", 125, region8, "TG");
            TANZANIA = new Country("TANZANIA", 126, region8, "TZ");
            UGANDA = new Country("UGANDA", 127, region8, "UG");
            ZAMBIA = new Country("ZAMBIA", 128, region8, "ZM");
            GHANA = new Country("GHANA", 129, region8, "GH");
            COTEDIVOIRE = new Country("COTEDIVOIRE", 130, region8, "CI");
            KENYA = new Country("KENYA", 131, region8, "KE");
            SENEGAL = new Country("SENEGAL", 132, region8, "SN");
            TUNISIA = new Country("TUNISIA", 133, region8, "TN");
            MOZAMBIQUE = new Country("MOZAMBIQUE", 134, region8, "MZ");
            LIBERIA = new Country("LIBERIA", 135, region8, "LR");
            ETHIOPIA = new Country("ETHIOPIA", 136, region8, "ET");
            LESOTHO = new Country("LESOTHO", 137, region8, "LS");
            SUDAN = new Country("SUDAN", 138, region8, ImConstants.MessageCreatorTag.SD);
            BOTSWANA = new Country("BOTSWANA", 139, region8, "BW");
            MAURITIUS = new Country("MAURITIUS", 140, region8, "MU");
            ANGOLA = new Country("ANGOLA", 141, region8, "AO");
            ALGERIA = new Country("ALGERIA", 142, region8, "DZ");
            SEYCHELLES = new Country("SEYCHELLES", 143, region8, "SC");
            DRC = new Country("DRC", 144, region8, "CD");
            MADAGASCAR = new Country("MADAGASCAR", 145, region8, "MG");
            SOMALIA = new Country("SOMALIA", 146, region8, "SO");
            Region region9 = Region.OCEANIA;
            AUSTRALIA = new Country("AUSTRALIA", 147, region9, "AU");
            NEWZEALAND = new Country("NEWZEALAND", 148, region9, "NZ");
            END_OF_COUNTRY = new Country("END_OF_COUNTRY", MNO.SBERBANK_RUSSIA, Region.END_OF_REGION, "END");
            $VALUES = $values();
        }

        private Country(String str, int i, Region region, String str2) {
            this.region = region;
            this.countryIso = str2;
        }

        public Region getRegion() {
            return this.region;
        }

        public String getCountryIso() {
            return this.countryIso;
        }
    }

    static {
        Region region = Region.END_OF_REGION;
        Country country = Country.END_OF_COUNTRY;
        GOOGLEGC = new Mno("GoogleGC_ALL", "", region, country);
        MDMN = new Mno("MDMN", "", region, country);
        DEFAULT = new Mno("DEFAULT", "DEFAULT", region, country);
        GENERIC = new Mno("GENERIC", "GENERIC", region, country);
        GCF = new Mno("GCF", "GCF,CPW", Region.GCF, Country.GCF);
        SAMSUNG_RCS = new Mno("Samsung_OPEN", "SOR", region, country);
        Region region2 = Region.EAST_ASIA;
        Country country2 = Country.CHINA;
        CMCC = new Mno("CMCC_CN", "CHM,CBK,CHC", region2, country2);
        CTC = new Mno("CTC_CN", "CTC", region2, country2);
        CU = new Mno("CU_CN", "CHU", region2, country2);
        CBN = new Mno("CBN_CN", "", region2, country2);
        Country country3 = Country.HONGKONG;
        CMHK = new Mno("CMHK_HK", "TGY", region2, country3);
        CUHK = new Mno("CUHK_HK", "TGY", region2, country3);
        CSL = new Mno("CSL_HK", "TGY", region2, country3);
        CTG = new Mno("CTG_HK", "TGY", region2, country3);
        HK3 = new Mno("3_HK", "TGY", region2, country3);
        PCCW = new Mno("PCCW_HK", "TGY", region2, country3);
        TRUPHONE_HK = new Mno("Truphone_HK", "TGY", region2, country3);
        SMARTONE = new Mno("Smartone_HK", "TGY", region2, country3);
        Country country4 = Country.JAPAN;
        DOCOMO = new Mno("Docomo_JP", "DCM", region2, country4);
        KDDI = new Mno("KDDI_JP", "KDI,UQM,JCO,SJP", region2, country4);
        RAKUTEN_JAPAN = new Mno("Rakuten_JP", "RKT", region2, country4);
        SOFTBANK = new Mno("Softbank_JP", "SBM", region2, country4);
        Country country5 = Country.KOREA;
        KT = new Mno("KT_KR", "KTT,KTC,K06,K01", region2, country5);
        LGU = new Mno("LGU+_KR", "LGT,LUC", region2, country5);
        SKT = new Mno("SKT_KR", "SKT,SKC,KOO", region2, country5);
        Country country6 = Country.MACAU;
        CTCMO = new Mno("CTC_MO", "TGY", region2, country6);
        CTM = new Mno("CTM_MO", "TGY", region2, country6);
        MACAU_THREE = new Mno("3_MO", "TGY", region2, country6);
        MACAU_SMARTONE = new Mno("Smartone_MO", "TGY", region2, country6);
        Country country7 = Country.TAIWAN;
        APT = new Mno("APT_TW", "BRI", region2, country7);
        CHT = new Mno("CHT_TW", "", region2, country7);
        FET = new Mno("FET_TW", "", region2, country7);
        TSTAR = new Mno("TSTAR_TW", "", region2, country7);
        TWM = new Mno("TWM_TW", "", region2, country7);
        Region region3 = Region.SOUTH_EAST_ASIA;
        Country country8 = Country.CAMBODIA;
        SEATEL_CAMBODIA = new Mno("Seatel_KH", "CAM,CAL", region3, country8);
        CELLCARD_CAMBODIA = new Mno("Cellcard_KH", "", region3, country8);
        SMART_CAMBODIA = new Mno("Smart_KH", "", region3, country8);
        METFONE_CAMBODIA = new Mno("Metfone_KH", "", region3, country8);
        Country country9 = Country.INDONESIA;
        SMARTFREN = new Mno("Smartfren_ID", "XID", region3, country9);
        TELKOMSEL = new Mno("Telkomsel_ID", "", region3, country9);
        INDOSAT_ID = new Mno("Indosat_ID", "", region3, country9);
        XL_ID = new Mno("XL_ID", "", region3, country9);
        TRI_ID = new Mno("3_ID", "", region3, country9);
        Country country10 = Country.MALAYSIA;
        CELCOM = new Mno("Celcom_MY", "XME", region3, country10);
        DIGI = new Mno("DIGI_MY", "", region3, country10);
        P1 = new Mno("P1_MY", "", region3, country10);
        UMOBILE = new Mno("UMobile_MY", "", region3, country10);
        YTL = new Mno("YTL_MY", "", region3, country10);
        MAXIS_MY = new Mno("Maxis_MY", "", region3, country10);
        Country country11 = Country.PHILIPPINES;
        GLOBE_PH = new Mno("Globe_PH", "GLB,XTC", region3, country11);
        DITO = new Mno("DITO_PH", "", region3, country11);
        SMART_PH = new Mno("Smart_PH", "SMA", region3, country11);
        Country country12 = Country.SINGAPORE;
        MOBILEONE = new Mno("Mobileone_SG", "MM1", region3, country12);
        SINGTEL = new Mno("Singtel_SG", "SIN", region3, country12);
        STARHUB = new Mno("Starhub_SG", "STH", region3, country12);
        TPG_SG = new Mno("TPG_SG", "XSP", region3, country12);
        Country country13 = Country.THAILAND;
        AIS = new Mno("AIS_TH", "THL", region3, country13);
        DTAC = new Mno("DTAC_TH", "", region3, country13);
        TRUEMOVE = new Mno("Truemove_TH", "", region3, country13);
        Country country14 = Country.MYANMAR;
        OOREDOO_MM = new Mno("Ooredoo_MM", "MYM", region3, country14);
        TELENOR_MM = new Mno("Telenor_MM", "", region3, country14);
        MPT_MM = new Mno("MPT_MM", "", region3, country14);
        MYTEL = new Mno("Mytel_MM", "", region3, country14);
        Country country15 = Country.VIETNAM;
        VINAPHONE = new Mno("Vinaphone_VN", "XXV", region3, country15);
        VIETTEL = new Mno("Viettel_VN", "", region3, country15);
        VIETNAMOBILE = new Mno("Vietnamobile_VN", "", region3, country15);
        MOBIFONE = new Mno("Mobifone_VN", "", region3, country15);
        Country country16 = Country.LAOS;
        LAOTEL = new Mno("Laotel_LA", "LAO", region3, country16);
        BEST = new Mno("Best_LA", "", region3, country16);
        UNITEL = new Mno("Unitel_LA", "", region3, country16);
        Country country17 = Country.BRUNEI;
        IMAGINE_BN = new Mno("Imagine_BN", "", region3, country17);
        PROGRESIF_BN = new Mno("Progresif_BN", "", region3, country17);
        UNN_BN = new Mno("UNN_BN", "", region3, country17);
        DST_BN = new Mno("DST_BN", "", region3, country17);
        Region region4 = Region.SOUTH_WEST_ASIA;
        Country country18 = Country.INDIA;
        AIRTEL = new Mno("AIRTEL_IN", "", region4, country18);
        BSNL = new Mno("BSNL_IN", "", region4, country18);
        RJIL = new Mno("RJIL_IN", "INS,INU", region4, country18);
        VODAFONE_INDIA = new Mno("Vodafone_IN", "", region4, country18);
        IDEA_INDIA = new Mno("IDEA_IN", "", region4, country18);
        Country country19 = Country.BANGLADESH;
        ROBI = new Mno("ROBI_BD", "BKD,BNG", region4, country19);
        BANGLALINK = new Mno("Banglalink_BD", "", region4, country19);
        GRAMEENPHONE = new Mno("GRAMEENPHONE_BD", "", region4, country19);
        Country country20 = Country.NEPAL;
        NAMASTE = new Mno("Namaste_NP", "NPL", region4, country20);
        NCELL = new Mno("Ncell_NP", "", region4, country20);
        Country country21 = Country.BHUTAN;
        TASHICELL = new Mno("TashiCell_BT", "", region4, country21);
        TELECOM_BHUTAN = new Mno("Telecom_BT", "", region4, country21);
        Country country22 = Country.SRILANKA;
        DLOG = new Mno("Dialog_LK", "SLK,SLI", region4, country22);
        MOBITEL_LK = new Mno("Mobitel_LK", "", region4, country22);
        HUTCH_LK = new Mno("Hutch_LK", "", region4, country22);
        AIRTEL_LK = new Mno("AIRTEL_LK", "", region4, country22);
        Country country23 = Country.MALDIVES;
        OOREDOO_MV = new Mno("Ooredoo_MV", "", region4, country23);
        DHIRAAGU_MV = new Mno("Dhiraagu_MV", "", region4, country23);
        Region region5 = Region.MIDDLE_EAST;
        Country country24 = Country.ISRAEL;
        PTR = new Mno("PTR_IL", "PTR", region5, country24);
        CLO = new Mno("CLO_IL", "", region5, country24);
        Telzar = new Mno("Telzar_IL", "", region5, country24);
        Annatel = new Mno("Annatel_IL", "", region5, country24);
        CELLCOM = new Mno("Cellcom_IL", "CEL", region5, country24);
        PCL = new Mno("PCL_IL", "PCL", region5, country24);
        HOTMOBILE = new Mno("HotMobile_IL", "ILO", region5, country24);
        WECOM = new Mno("Wecom_IL", "", region5, country24);
        WEBBING = new Mno("Webbing_IL", "", region5, country24);
        Country country25 = Country.LEBANON;
        ALFA = new Mno("Alfa_LB", "MID", region5, country25);
        TOUCH = new Mno("Touch_LB", "", region5, country25);
        Country country26 = Country.KUWAIT;
        VIVA_KUWAIT = new Mno("Viva_KW", "XSG", region5, country26);
        VIRGIN_KUWAIT = new Mno("Virgin_KW", "", region5, country26);
        ZAIN_KUWAIT = new Mno("Zain_KW", "", region5, country26);
        OOREDOO_KUWAIT = new Mno("Ooredoo_KW", "", region5, country26);
        Country country27 = Country.QATAR;
        MOI = new Mno("MOI_QA", "", region5, country27);
        OOREDOO_QATAR = new Mno("Ooredoo_QA", "", region5, country27);
        VODAFONE_QATAR = new Mno("Vodafone_QA", "", region5, country27);
        MOD_QATAR = new Mno("MOD_QA", "", region5, country27);
        Country country28 = Country.TURKEY;
        AVEA_TURKEY = new Mno("AVEA_TR", "TUR", region5, country28);
        TURKCELL_TURKEY = new Mno("Turkcell_TR", "", region5, country28);
        VODAFONE_TURKEY = new Mno("Vodafone_TR", "", region5, country28);
        Country country29 = Country.UAE;
        ETISALAT_UAE = new Mno("Etisalat_AE", "", region5, country29);
        DU_UAE = new Mno("DU_AE", "", region5, country29);
        ATHEER_UAE = new Mno("Atheer_AE", "", region5, country29);
        NEDAA_UAE = new Mno("Nedaa_AE", "", region5, country29);
        Country country30 = Country.EGYPT;
        ETISALAT_EG = new Mno("Etisalat_EG", "EGY", region5, country30);
        VODAFONE_EG = new Mno("Vodafone_EG", "", region5, country30);
        WE_EG = new Mno("We_EG", "", region5, country30);
        ORANGE_EG = new Mno("Orange_EG", "", region5, country30);
        Country country31 = Country.OMAN;
        OMANTEL_OMAN = new Mno("Omantel_OM", "", region5, country31);
        OOREDOO_OMAN = new Mno("Ooredoo_OM", "", region5, country31);
        VODAFONE_OMAN = new Mno("Vodafone_OM", "", region5, country31);
        Country country32 = Country.IRAN;
        MCCI_IRAN = new Mno("Mcci_IR", "THR", region5, country32);
        MTN_IRAN = new Mno("MTN_IR", "", region5, country32);
        Country country33 = Country.KSA;
        ZAIN_KSA = new Mno("Zain_SA", "KSA", region5, country33);
        SALAM_KSA = new Mno("Salam_SA", "", region5, country33);
        STC_KSA = new Mno("STC_SA", "", region5, country33);
        MOBILY_KSA = new Mno("MOBILY_SA", "", region5, country33);
        REDBULL_KSA = new Mno("Redbull_SA", "", region5, country33);
        VIRGIN_KSA = new Mno("Virgin_SA", "", region5, country33);
        YEMEN_YE = new Mno("Yemen_YE", "", region5, Country.YEMEN);
        Country country34 = Country.PAKISTAN;
        TELENOR_PAK = new Mno("Telenor_PK", "PAK", region5, country34);
        JAZZ_PAK = new Mno("Jazz_PK", "PKD", region5, country34);
        ZONG_PAK = new Mno("Zong_PK", "", region5, country34);
        UFONE_PAK = new Mno("Ufone_PK", "", region5, country34);
        ETISALAT_AFG = new Mno("Etisalat_AF", "AFG", region5, Country.AFGHANISTAN);
        Country country35 = Country.BAHRAIN;
        VIVA_BAHRAIN = new Mno("Viva_BH", "", region5, country35);
        Country country36 = Country.IRAQ;
        ASIACELL_IRAQ = new Mno("Asiacell_IQ", "", region5, country36);
        ZAIN_IRAQ = new Mno("Zain_IQ", "", region5, country36);
        ZAIN_BAHRAIN = new Mno("Zain_BH", "", region5, country35);
        BATELCO_BAHRAIN = new Mno("Batelco_BH", "", region5, country35);
        Country country37 = Country.JORDAN;
        ZAIN_JO = new Mno("Zain_JO", "", region5, country37);
        ORANGE_JO = new Mno("Orange_JO", "", region5, country37);
        UMNIAH_JO = new Mno("Umniah_JO", "", region5, country37);
        Region region6 = Region.EUROPE;
        Country country38 = Country.ALBANIA;
        TELEKOM_ALBANIA = new Mno("Telekom_AL", "TAL", region6, country38);
        VODAFONE_ALBANIA = new Mno("Vodafone_AL", "AVF", region6, country38);
        TELECOM_ANDORRA = new Mno("Telecom_AD", "", region6, Country.ANDORRA);
        MTS_ARMENIA = new Mno("MTS_AM", "", region6, Country.ARMENIA);
        Country country39 = Country.AUSTRIA;
        AUSTRIA_A1 = new Mno("A1_AT", "MOB", region6, country39);
        SPUSU_AUSTRIA = new Mno("Spusu_AT", "", region6, country39);
        Country country40 = Country.AZERBAIJAN;
        AZERCELL_AZ = new Mno("Azercell_AZ", "", region6, country40);
        BAKCELL_AZ = new Mno("Bakcell_AZ", "", region6, country40);
        NAR_AZ = new Mno("Nar_AZ", "", region6, country40);
        Country country41 = Country.CYPRUS;
        EPIC_CYPRUS = new Mno("Epic_CY", "", region6, country41);
        VODAFONE_CY = new Mno("Vodafone_CY", "CYV", region6, country41);
        PRIMETEL_CY = new Mno("Primetel_CY", "PTL", region6, country41);
        Country country42 = Country.ESTONIA;
        TELIA_EE = new Mno("Telia_EE", "SEB", region6, country42);
        ELISA_EE = new Mno("Elisa_EE", "", region6, country42);
        TELE2_EE = new Mno("Tele2_EE", "", region6, country42);
        H3G_AT = new Mno("3_AT", "DRE,ATO", region6, country39);
        TMOBILE_AUSTRIA = new Mno("TMobile_AT", "MAX,TRG", region6, country39);
        Country country43 = Country.BELARUS;
        VELCOM_BY = new Mno("Velcom_BY", "", region6, country43);
        MTS_BY = new Mno("MTS_BY", "", region6, country43);
        Country country44 = Country.BELGIUM;
        PROXIMUS = new Mno("Proximus_BE", "PRO,LUX", region6, country44);
        ORANGE_BELGIUM = new Mno("Orange_BE", "MST", region6, country44);
        TELENET_BELGIUM = new Mno("Telenet_BE", "", region6, country44);
        Country country45 = Country.BOSNIA;
        MTEL_BOSNIA = new Mno("Mtel_BA", "", region6, country45);
        TELECOM_BOSNIA = new Mno("Telecom_BA", "", region6, country45);
        Country country46 = Country.LUXEMBOURG;
        POST_LUXEMBOURG = new Mno("Post_LU", "", region6, country46);
        TANGO_LUXEMBOURG = new Mno("Tango_LU", "", region6, country46);
        ORANGE_LUXEMBOURG = new Mno("Orange_LU", "", region6, country46);
        Country country47 = Country.MOLDOVA;
        ORANGE_MOLDOVA = new Mno("Orange_MD", "", region6, country47);
        MOLDCELL_MOLDOVA = new Mno("Moldcell_MD", "", region6, country47);
        Country country48 = Country.MONGOLIA;
        MOBICOM_MONGOLIA = new Mno("Mobicom_MN", "", region6, country48);
        ONDO_MONGOLIA = new Mno("Ondo_MN", "", region6, country48);
        GMOBILE_MONGOLIA = new Mno("GMobile_MN", "", region6, country48);
        Country country49 = Country.CZECH;
        TMOBILE_CZ = new Mno("TMobile_CZ", "TMZ,ETL,XEZ", region6, country49);
        TELEFONICA_CZ = new Mno("Telefonica_CZ", "O2C", region6, country49);
        VODAFONE_CZ = new Mno("Vodafone_CZ", "VDC", region6, country49);
        Country country50 = Country.DENMARK;
        H3G_DK = new Mno("3_DK", "HTD", region6, country50);
        TDC_DK = new Mno("TDC_DK", "", region6, country50);
        TELENOR_DK = new Mno("Telenor_DK", "", region6, country50);
        TELIA_DK = new Mno("Telia_DK", "", region6, country50);
        Country country51 = Country.FINLAND;
        DNA_FINLAND = new Mno("DNA_FI", "", region6, country51);
        ELISA_FINLAND = new Mno("Elisa_FI", "", region6, country51);
        ERILLISVERKOT_FINLAND = new Mno("Erillisverkot_FI", "", region6, country51);
        ALCOM_FINLAND = new Mno("Alcom_FI", "", region6, country51);
        TELIA_FINLAND = new Mno("Telia_FI", "", region6, country51);
        Country country52 = Country.FRANCE;
        BOG = new Mno("Bouygues_FR", "BOG,XEF", region6, country52);
        NRJ_FRANCE = new Mno("NRJ_FR", "", region6, country52);
        ORANGE = new Mno("Orange_FR", "FTM", region6, country52);
        SFR = new Mno("SFR_FR", "SFR", region6, country52);
        EDF = new Mno("EDF_FR", "", region6, country52);
        CORIOLIS = new Mno("Coriolis_FR", "", region6, country52);
        SPM = new Mno("SPM_FR", "", region6, country52);
        FREE = new Mno("Free_FR", "", region6, country52);
        HUBONE = new Mno("Hubone_FR", "", region6, country52);
        ZEOP_FR = new Mno("Zeop_FR", "", region6, country52);
        MAGTICOM_GE = new Mno("Magticom_GE", "", region6, Country.GEORGIA);
        Country country53 = Country.GERMANY;
        TELEFONICA_GERMANY = new Mno("Telefonica_DE", "VIA,DBT", region6, country53);
        TMOBILE = new Mno("TMobile_DE", "DTR,DTM,DCO,XEG", region6, country53);
        VODAFONE = new Mno("Vodafone_DE", "VD2", region6, country53);
        ONENONE = new Mno("1n1_DE", "", region6, country53);
        TRUPHONE_GERMANY = new Mno("Truphone_DE", "", region6, country53);
        GIBTELECOM_GIBRALTAR = new Mno("Gibtelecom_GI", "", region6, Country.GIBRALTAR);
        Country country54 = Country.GREECE;
        TMOBILE_GREECE = new Mno("TMobile_GR", "COS,EUR", region6, country54);
        VODAFONE_GREECE = new Mno("Vodafone_GR", "VGR", region6, country54);
        WIND_GREECE = new Mno("Wind_GR", "", region6, country54);
        TELEPOST_GREENLAND = new Mno("Telepost_GL", "", region6, Country.GREENLAND);
        Country country55 = Country.HUNGARY;
        TMOBILE_HUNGARY = new Mno("TMobile_HU", "TMH,XEH", region6, country55);
        VODAFONE_HUNGARY = new Mno("Vodafone_HU", "VDH", region6, country55);
        TELENOR_HUNGARY = new Mno("Telenor_HU", "PAN", region6, country55);
        DIGI_HUNGARY = new Mno("DIGI_HU", "", region6, country55);
        Country country56 = Country.CROATIA;
        TMOBILE_CROATIA = new Mno("TMobile_HR", "CRO,SEE,DHR", region6, country56);
        TELEMACH_CROATIA = new Mno("Telemach_HR", "", region6, country56);
        VODAFONE_CROATIA = new Mno("Vodafone_HR", "VIP", region6, country56);
        Country country57 = Country.SERBIA;
        TELEKOM_SERBIA = new Mno("Telekom_RS", "", region6, country57);
        TELENOR_SERBIA = new Mno("Telenor_RS", "MSR", region6, country57);
        VIP_SERBIA = new Mno("Vipmobile_RS", "TOP", region6, country57);
        Country country58 = Country.IRELAND;
        METEOR_IRELAND = new Mno("Meteor_IE", "MET", region6, country58);
        VODAFONE_IRELAND = new Mno("Vodafone_IE", "VDI", region6, country58);
        H3G_IRELAND = new Mno("3_IE", "3IE", region6, country58);
        SKY_IRELAND = new Mno("Sky_IE", "", region6, country58);
        Country country59 = Country.ITALY;
        FASTWEB_ITALY = new Mno("Fastweb_IT", "", region6, country59);
        TELECOM_ITALY = new Mno("Telecom_IT", "TIM", region6, country59);
        VODAFONE_ITALY = new Mno("Vodafone_IT", "OMN,ITV", region6, country59);
        WINDTRE = new Mno("Windtre_IT", "HUI", region6, country59);
        VIANOVA_ITALY = new Mno("Vianova_IT", "", region6, country59);
        COOPVOCE_ITALY = new Mno("Coopvoce_IT", "", region6, country59);
        LYCA_ITALY = new Mno("Lyca_IT", "", region6, country59);
        PLINTRON_ITALY = new Mno("Plintron_IT", "", region6, country59);
        SPUSU_ITALY = new Mno("Spusu_IT", "", region6, country59);
        ILIAD_ITALY = new Mno("Iliad_IT", "", region6, country59);
        Country country60 = Country.KAZAKHSTAN;
        ALTEL_KAZAKHSTAN = new Mno("Altel_KZ", "SKZ", region6, country60);
        BEELINE_KAZAKHSTAN = new Mno("Beeline_KZ", "", region6, country60);
        TELE2_KAZAKHSTAN = new Mno("Tele2_KZ", "", region6, country60);
        Country country61 = Country.KYRGYZSTAN;
        MEGACOM_KYRGYZSTAN = new Mno("Megacom_KG", "", region6, country61);
        BEELINE_KYRGYZSTAN = new Mno("Beeline_KG", "", region6, country61);
        Country country62 = Country.LATVIA;
        LMT_LATVIA = new Mno("LMT_LV", "", region6, country62);
        BITE_LATVIA = new Mno("Bite_LV", "", region6, country62);
        TELE2_LATVIA = new Mno("Tele2_LV", "", region6, country62);
        Country country63 = Country.LIECHTENSTEIN;
        TELECOM_LI = new Mno("Telecom_LI", "", region6, country63);
        SALT_LI = new Mno("Salt_LI", "", region6, country63);
        Country country64 = Country.LITHUANIA;
        ZEB = new Mno("ZEB_LT", "ZEB", region6, country64);
        BITE_LITHUANIA = new Mno("Bite_LT", "", region6, country64);
        TELE2_LITHUANIA = new Mno("Tele2_LT", "", region6, country64);
        Country country65 = Country.MACEDONIA;
        TMOBILE_MK = new Mno("TMobile_MK", "MBM", region6, country65);
        VIP_MACEDONIA = new Mno("VIP_MK", "", region6, country65);
        TELECOM_MONACO = new Mno("Telecom_MC", "", region6, Country.MONACO);
        Country country66 = Country.MONTENEGRO;
        TMOBILE_ME = new Mno("TMobile_ME", "", region6, country66);
        MTEL_ME = new Mno("Mtel_ME", "", region6, country66);
        TELENOR_MONTENEGRO = new Mno("Telenor_ME", "", region6, country66);
        Country country67 = Country.NETHERLANDS;
        TELE2NL = new Mno("Tele2_NL", "", region6, country67);
        TMOBILE_NED = new Mno("TMobile_NL", "TNL,DNL,PHN", region6, country67);
        VODAFONE_NETHERLAND = new Mno("Vodafone_NL", "VDF,VDP", region6, country67);
        KPN_NED = new Mno("KPN_NL", "", region6, country67);
        MVNO_NED = new Mno("Mvno_NL", "", region6, country67);
        TRUPHONE_NED = new Mno("Truphone_NL", "", region6, country67);
        Country country68 = Country.NORWAY;
        TELENOR_NORWAY = new Mno("Telenor_NO", "NEE", region6, country68);
        TELIA_NORWAY = new Mno("Telia_NO", "", region6, country68);
        ICENET_NORWAY = new Mno("IceNet_NO", "", region6, country68);
        ERATE_NORWAY = new Mno("Erate_NO", "", region6, country68);
        Country country69 = Country.POLAND;
        ORANGE_POLAND = new Mno("Orange_PL", "OPV,XEO,IDE", region6, country69);
        TMOBILE_PL = new Mno("TMobile_PL", "TPL,DPL", region6, country69);
        PLAY = new Mno("Play_PL", "PRT", region6, country69);
        PLUS_POLAND = new Mno("Plus_PL", "PLS", region6, country69);
        TRUPHONE_POLAND = new Mno("Truphone_PL", "", region6, country69);
        Country country70 = Country.PORTUGAL;
        NOS_PORTUGAL = new Mno("NOS_PT", "OPT", region6, country70);
        MEO_PORTUGAL = new Mno("MEO_PT", "MEO", region6, country70);
        VODAFONE_PORTUGAL = new Mno("Vodafone_PT", "TCL,TPH", region6, country70);
        Country country71 = Country.ROMANIA;
        VODAFONE_ROMANIA = new Mno("Vodafone_RO", "CNX,ROM", region6, country71);
        ORANGE_ROMANIA = new Mno("Orange_RO", "ORO", region6, country71);
        TMOBILE_ROMANIA = new Mno("TMobile_RO", "COA", region6, country71);
        RDS_ROMANIA = new Mno("RDS_RO", "", region6, country71);
        Country country72 = Country.RUSSIA;
        MTS_RUSSIA = new Mno("MTS_RU", "", region6, country72);
        MEGAFON_RUSSIA = new Mno("Megafon_RU", "", region6, country72);
        BEELINE_RUSSIA = new Mno("Beeline_RU", "", region6, country72);
        TELE2_RUSSIA = new Mno("TELE2_RU", "SER,CAU", region6, country72);
        SBERBANK_RUSSIA = new Mno("Sberbank_RU", "", region6, country72);
        TATTELECOM_RUSSIA = new Mno("Tattelecom_RU", "", region6, country72);
        MOTIV_RUSSIA = new Mno("Motiv_RU", "", region6, country72);
        Country country73 = Country.SPAIN;
        ORANGE_SPAIN = new Mno("Orange_ES", "AMO", region6, country73);
        VODAFONE_SPAIN = new Mno("Vodafone_ES", "ATL", region6, country73);
        TELEFONICA_SPAIN = new Mno("Telefonica_ES", "XEC,PHE", region6, country73);
        YOIGO_SPAIN = new Mno("Yoigo_ES", "", region6, country73);
        TRUPHONE_SPAIN = new Mno("Truphone_ES", "", region6, country73);
        DIGI_SPAIN = new Mno("Digi_ES", "", region6, country73);
        LOWI_SPAIN = new Mno("Lowi_ES", "", region6, country73);
        FINETWORK_SPAIN = new Mno("Finetwork_ES", "", region6, country73);
        Country country74 = Country.SLOVAKIA;
        ORANGE_SLOVAKIA = new Mno("Orange_SK", "ORX,ORS", region6, country74);
        TMOBILE_SLOVAKIA = new Mno("TMobile_SK", "TMS", region6, country74);
        TELEFONICA_SLOVAKIA = new Mno("Telefonica_SK", "ORV", region6, country74);
        SWAN_SLOVAKIA = new Mno("4ka_SK", "", region6, country74);
        Country country75 = Country.SLOVENIA;
        A1_SVN = new Mno("A1_SI", "SIM", region6, country75);
        TELEKOM_SVN = new Mno("Telekom_SI", "MOT,SIO", region6, country75);
        TELEMACH_SVN = new Mno("Telemach_SI", "", region6, country75);
        T2_SVN = new Mno("T2_SI", "", region6, country75);
        Country country76 = Country.SWEDEN;
        H3G_SE = new Mno("3_SE", "HTS", region6, country76);
        VIMLA_SWE = new Mno("Vimla_SE", "", region6, country76);
        TELENOR_SWE = new Mno("Telenor_SE", "VDS", region6, country76);
        TELE2_SWE = new Mno("Tele2_SE", "", region6, country76);
        TELIA_SWE = new Mno("Telia_SE", "", region6, country76);
        TELECOM_SE = new Mno("Telecom_SE", "", region6, country76);
        TELAVOX_SWEDEN = new Mno("Telavox_SE", "", region6, country76);
        LYCA_SWEDEN = new Mno("Lyca_SE", "", region6, country76);
        Country country77 = Country.SWITZERLAND;
        ORANGE_SWITZERLAND = new Mno("Orange_CH", "", region6, country77);
        SWISSCOM = new Mno("Swisscom_CH", "SWC", region6, country77);
        SUNRISE_CH = new Mno("Sunrise_CH", "AUT", region6, country77);
        UPC_CH = new Mno("UPC_CH", "", region6, country77);
        MEGAFON_TAJIKISTAN = new Mno("Megafon_TJ", "", region6, Country.TAJIKISTAN);
        Country country78 = Country.UK;
        EE = new Mno("EE_GB", "EVR,BTB,BTE", region6, country78);
        EE_ESN = new Mno("EEESN_GB", "U06", region6, country78);
        VIRGIN = new Mno("Virgin_GB", "", region6, country78);
        GAMMA = new Mno("Gamma_GB", "", region6, country78);
        SMARTY = new Mno("SMARTY_GB", "", region6, country78);
        SUPERDRUG = new Mno("Superdrug_GB", "", region6, country78);
        MANX = new Mno("Manx_GB", "", region6, country78);
        SURE = new Mno("Sure_GB", "", region6, country78);
        SPUSU = new Mno("Spusu_GB", "", region6, country78);
        TRUPHONE_UK = new Mno("Truphone_GB", "", region6, country78);
        TANGO_UK = new Mno("Tango_GB", "", region6, country78);
        BTOP = new Mno("BTOP_GB", "", region6, country78);
        H3G = new Mno("Hutchison_GB", "H3G", region6, country78);
        TELEFONICA_UK = new Mno("Telefonica_GB", "O2U,BTU,XEU", region6, country78);
        TELEFONICA_UK_LAB = new Mno("TelefonicaLAB_GB", "", region6, country78);
        VODAFONE_UK = new Mno("Vodafone_GB", "VOD", region6, country78);
        SKY = new Mno("Sky_GB", "", region6, country78);
        LYCA = new Mno("Lyca_GB", "", region6, country78);
        TATA_UK = new Mno("TCL_GB", "", region6, country78);
        Country country79 = Country.ICELAND;
        NOVA_IS = new Mno("Nova_IS", "", region6, country79);
        SIMINN_IS = new Mno("Siminn_IS", "", region6, country79);
        VODAFONE_IS = new Mno("Vodafone_IS", "", region6, country79);
        Country country80 = Country.BULGARIA;
        TELENOR_BULGARIA = new Mno("Telenor_BG", "BGL", region6, country80);
        A1_BULGARIA = new Mno("A1_BG", "", region6, country80);
        VIVACOM_BULGARIA = new Mno("Vivacom_BG", "VVT", region6, country80);
        Country country81 = Country.UKRAINE;
        KYIVSTAR_UA = new Mno("Kyivstar_UA", "", region6, country81);
        LIFECELL_UA = new Mno("Lifecell_UA", "SEK", region6, country81);
        VODAFONE_UA = new Mno("Vodafone_UA", "", region6, country81);
        Country country82 = Country.UZBEKISTAN;
        MOBIUZ_UZ = new Mno("Mobiuz_UZ", "", region6, country82);
        BEELINE_UZ = new Mno("Beeline_UZ", "", region6, country82);
        UCELL_UZ = new Mno("Ucell_UZ", "", region6, country82);
        UZTELECOM_UZ = new Mno("Uztelecom_UZ", "", region6, country82);
        Country country83 = Country.MALTA;
        EPIC_MT = new Mno("Epic_MT", "", region6, country83);
        GO_MT = new Mno("GO_MT", "", region6, country83);
        Region region7 = Region.NORTH_AMERICA;
        Country country84 = Country.CANADA;
        BELL = new Mno("Bell_CA", "BMC,BMR,VMC,XAC,SOL,PCM", region7, country84);
        ROGERS = new Mno("RWC_CA", "RWC,FMC,TBT", region7, country84);
        CHATR = new Mno("CHATR_CA", "CHR,RWC,FMC", region7, country84);
        ZTAR = new Mno("ZTAR_CA", "CHR,RWC,FMC", region7, country84);
        CTF = new Mno("CTF_CA", "CHR,RWC,FMC", region7, country84);
        MOBILICITY = new Mno("MOBILICITY_CA", "CHR,RWC,FMC", region7, country84);
        TELUS = new Mno("Telus_CA", "TLS,TLA,PMB", region7, country84);
        KOODO = new Mno("Koodo_CA", "KDO", region7, country84);
        VTR = new Mno("VideoTron_CA", "VTR", region7, country84);
        FIZ = new Mno("Fizz_CA", "FIZ", region7, country84);
        EASTLINK = new Mno("ESK_CA", "ESK", region7, country84);
        SASKTEL = new Mno("SaskTel_CA", "BWA", region7, country84);
        SASKTELLAB = new Mno("SaskTelLAB_CA", "", region7, country84);
        WIND = new Mno("Wind_CA", "GLW,SJR", region7, country84);
        XPLORE = new Mno("Xplore_CA", "XPL", region7, country84);
        Country country85 = Country.US;
        ATT = new Mno("ATT_US", "ATT,TFA,AIO,XAR,APP,DSA", region7, country85);
        TMOUS = new Mno("TMobile_US", "TMB,TMK,TFO,XAG,XAA,XAU,DSH,ASR", region7, country85);
        DISH = new Mno("Dish_US", "DSG", region7, country85);
        SPRINT = new Mno("Sprint_US", "SPR,BST,VMU,TFS,XAS", region7, country85);
        USCC = new Mno("USCC_US", "USC", region7, country85);
        VZW = new Mno("VZW_US", "VZW,CCT,LRA,TFV,TFN,CHA,FKR,VPP", region7, country85);
        ALTICE = new Mno("Altice_US", "ATC", region7, country85);
        GCI = new Mno("GCI_US", "", region7, country85);
        GEOVERSE = new Mno("Geoverse_US", "", region7, country85);
        INTEROP = new Mno("Interop_US", "", region7, country85);
        TANGO_US = new Mno("Tango_US", "", region7, country85);
        UNION = new Mno("Union_US", "", region7, country85);
        GENERIC_IR92 = new Mno("GenericIR92_US", "ACG", region7, country85);
        DPAC = new Mno("DPAC_US", "", region7, country85);
        ASTCA_US = new Mno("ASTCA_US", "", region7, country85);
        GTA = new Mno("GTA_US", "", region7, country85);
        ITE = new Mno("ITE_US", "", region7, country85);
        Region region8 = Region.SOUTH_AMERICA;
        Country country86 = Country.ARGENTINA;
        CLARO_ARGENTINA = new Mno("Claro_AR", "CTI,ARO", region8, country86);
        MOVISTAR_ARGENTINA = new Mno("Movistar_AR", "UFN,ARO", region8, country86);
        PERSONAL_ARGENTINA = new Mno("Personal_AR", "PSN,ARO", region8, country86);
        Country country87 = Country.BAHAMAS;
        ALIV_BAHAMAS = new Mno("Aliv_BS", "BAA,TTT", region8, country87);
        BTC_BAHAMAS = new Mno("BTC_BS", "BAT", region8, country87);
        CABLE_BARBADOS = new Mno("Cable_BB", "CWW", region8, Country.BARBADOS);
        Country country88 = Country.BERMUDA;
        CELLONE_BERMUDA = new Mno("Cellone_BM", "TPA", region8, country88);
        PARADISE_BERMUDA = new Mno("Paradise_BM", "TPA,GTO", region8, country88);
        DIGI_BELIZE = new Mno("Digi_BZ", "GTO", region8, Country.BELIZE);
        Country country89 = Country.BRAZIL;
        VIVO_BRAZIL = new Mno("Vivo_BR", "ZVV,ZTO", region8, country89);
        TIM_BRAZIL = new Mno("Tim_BR", "ZTM,ZTO", region8, country89);
        CLARO_BRAZIL = new Mno("Claro_BR", "ZTA,ZTO", region8, country89);
        OI_BRAZIL = new Mno("Oi_BR", "ZTR,ZTO", region8, country89);
        AMERICANET_BRAZIL = new Mno("Americanet_BR", "ZTO", region8, country89);
        UNIFIQUE_BRAZIL = new Mno("Unifique_BR", "ZTO", region8, country89);
        BRISANET_BRAZIL = new Mno("Brisanet_BR", "ZTO", region8, country89);
        ARQIA_BRAZIL = new Mno("Arqia_BR", "ZTO", region8, country89);
        Country country90 = Country.COLOMBIA;
        AVANTEL_COLOMBIA = new Mno("Avantel_CO", "COD,COO", region8, country90);
        MOVISTAR_COLOMBIA = new Mno("Movistar_CO", "COB,COO", region8, country90);
        CLARO_COLOMBIA = new Mno("Claro_CO", "COM,COO", region8, country90);
        TIGO_COLOMBIA = new Mno("Tigo_CO", "COL,COO", region8, country90);
        WOM_COLOMBIA = new Mno("Wom_CO", "COO", region8, country90);
        CLARO_COSTARICA = new Mno("Claro_CR", "CRC,GTO", region8, Country.COSTA_RICA);
        UTS_CURACAO = new Mno("UTS_CW", "TPA", region8, Country.CURACAO);
        Country country91 = Country.DOMINICAN;
        CLARO_DOMINICAN = new Mno("Claro_DO", "CDR,DOO", region8, country91);
        ORANGE_DOMINICANA = new Mno("Orange_DO", "DOR,DOO", region8, country91);
        VIVA_DOMINICAN = new Mno("Viva_DO", "TPA,GTO,DOO", region8, country91);
        DAUPHIN_STMARTIN = new Mno("DAUPHIN_MF", "TPA,GTO,GLO", region8, Country.STMARTIN);
        Country country92 = Country.ECUADOR;
        MOVISTAR_ECUADOR = new Mno("Movistar_EC", "EBE,EON", region8, country92);
        CLARO_ECUADOR = new Mno("Claro_EC", "ECO,EON", region8, country92);
        ALE_ECUADOR = new Mno("ALE_EC", "ALE,EON", region8, country92);
        Country country93 = Country.EL_SALVADOR;
        CLARO_ELSALVADOR = new Mno("Claro_SV", "PGU,GTO", region8, country93);
        TIGO_ELSALVADOR = new Mno("Tigo_SV", "ETE,CTE,CGU,TPA,GTO", region8, country93);
        Country country94 = Country.GUATEMALA;
        TIGO_GUATEMALA = new Mno("Tigo_GT", "CGU,GTO,TPA", region8, country94);
        CLARO_GUATEMALA = new Mno("Claro_GT", "PGU,GTO", region8, country94);
        ENET_GUYANA = new Mno("ENet_GY", "TPA", region8, Country.GUYANA);
        Country country95 = Country.HONDURAS;
        CLARO_HONDURAS = new Mno("Claro_HN", "PGU,GTO", region8, country95);
        TIGO_HONDURAS = new Mno("Tigo_HN", "CTE,CGU,ETE,GTO,TPA", region8, country95);
        CABLE_JAMAICA = new Mno("Cable_JM", "CWW", region8, Country.JAMAICA);
        Country country96 = Country.MEXICO;
        TCE = new Mno("Telcel_MX", "TCE,MXO,MXD", region8, country96);
        ATT_MEXICO = new Mno("Att_ius_MX", "IUS,MXO,MXD", region8, country96);
        ALTAN_MEXICO = new Mno("Altan_MX", "MXO,MXD", region8, country96);
        MOVISTAR_MEXICO = new Mno("Movistar_MX", "TMM,MXO,MXD", region8, country96);
        AIRBUS_MEXICO = new Mno("Airbus_MX", "MXO,MXD", region8, country96);
        Country country97 = Country.NICARAGUA;
        CLARO_NICARAGUA = new Mno("Claro_NI", "PGU,GTO", region8, country97);
        TIGO_NICARAGUA = new Mno("Tigo_NI", "NBS,GTO", region8, country97);
        Country country98 = Country.PANAMA;
        CABLE_PANAMA = new Mno("Cable_PA", "PCW,TPA,GTO", region8, country98);
        TIGO_PANAMA = new Mno("Tigo_PA", "PBS,GTO,TPA", region8, country98);
        CLARO_PANAMA = new Mno("Claro_PA", "CPA,GTO", region8, country98);
        Country country99 = Country.PARAGUAY;
        CLARO_PARAGUAY = new Mno("Claro_PY", "CTP,UPO", region8, country99);
        PERSONAL_PARAGUAY = new Mno("Personal_PY", "PSP,UPO", region8, country99);
        TIGO_PARAGUAY = new Mno("Tigo_PY", "TGP,UYO,UPO", region8, country99);
        Country country100 = Country.PERU;
        CLARO_PERU = new Mno("Claro_PE", "PET,PEO", region8, country100);
        ENTEL_PERU = new Mno("Entel_PE", "PNT,PEO", region8, country100);
        MOVISTAR_PERU = new Mno("Movistar_PE", "SAM,PEO", region8, country100);
        Country country101 = Country.PUERTO;
        CLARO_PUERTO = new Mno("Claro_PR", "PCT", region8, country101);
        TRACFONE_CLARO = new Mno("Tracfone_PR", "TFC", region8, country101);
        LIBERTY_PUERTO = new Mno("Liberty_PR", "LLA", region8, country101);
        Country country102 = Country.BOLIVIA;
        ENTEL_BOLIVIA = new Mno("Entel_BO", "BVO,BVE", region8, country102);
        TIGO_BOLIVIA = new Mno("Tigo_BO", "BVT,BVO", region8, country102);
        Country country103 = Country.CHILE;
        MOVISTAR_CHILE = new Mno("Movistar_CL", "CHT,CHO,CHH,CHP,CHQ,CHK", region8, country103);
        CLARO_CHILE = new Mno("Claro_CL", "CHL,CHO,CHH,CHP,CHQ,CHK", region8, country103);
        WOM_CHILE = new Mno("Wom_CL", "CHX,CHO,CHH,CHP,CHQ,CHK", region8, country103);
        ENTEL_CHILE = new Mno("Entel_CL", "CHE,CHO,CHH,CHP,CHQ,CHK", region8, country103);
        VTR_CHILE = new Mno("VTR_CL", "CHV,CHO", region8, country103);
        Country country104 = Country.URUGUAY;
        MOVISTAR_URUGUAY = new Mno("Movistar_UY", "UFU,UYO,UPO", region8, country104);
        CLARO_URUGUAY = new Mno("Claro_UY", "CTU,UYO,UPO", region8, country104);
        ANTEL_URUGUAY = new Mno("Antel_UY", "ANC,UYO,UPO", region8, country104);
        BMOBILE_TRINIDAD = new Mno("BMobile_TT", "TPA", region8, Country.TRINIDAD);
        Region region9 = Region.AFRICA;
        Country country105 = Country.MOROCCO;
        MAROC_MOROCCO = new Mno("Maroc_MA", "MAT", region9, country105);
        INWI_MOROCCO = new Mno("INWI_MA", "MWD", region9, country105);
        ORANGE_MOROCCO = new Mno("Orange_MA", "", region9, country105);
        Country country106 = Country.SENEGAL;
        ORANGE_SENEGAL = new Mno("Orange_SN", "DKR", region9, country106);
        FREE_SENEGAL = new Mno("Free_SN", "", region9, country106);
        ORANGE_LIBERIA = new Mno("Orange_LR", "ACR", region9, Country.LIBERIA);
        Country country107 = Country.ETHIOPIA;
        Telecom_ETHIOPIA = new Mno("Telecom_ET", "", region9, country107);
        Country country108 = Country.MAURITIUS;
        EMTEL_MAURITIUS = new Mno("Emtel_MU", "", region9, country108);
        TELECOM_MAURITIUS = new Mno("Telecom_MU", "", region9, country108);
        MTML_MAURITIUS = new Mno("Mtml_MU", "", region9, country108);
        Country country109 = Country.LIBYA;
        LIBYANAMOBILE_LIBYA = new Mno("Libyanamobile_LY", "LYS", region9, country109);
        ALMADAR_LIBYA = new Mno("Almadar_LY", "", region9, country109);
        OOREDOO_ALGERIA = new Mno("Ooredoo_DZ", "", region9, Country.ALGERIA);
        Country country110 = Country.NIGERIA;
        SMILE_NIGERIA = new Mno("Smile_NG", "ECT", region9, country110);
        NTEL_NIGERIA = new Mno("Ntel_NG", "", region9, country110);
        AIRTEL_NIGERIA = new Mno("AIRTEL_NG", "", region9, country110);
        MTN_NIGERIA = new Mno("MTN_NG", "", region9, country110);
        Country country111 = Country.TUNISIA;
        OOREDOO_TUNISIA = new Mno("Ooredoo_TN", "TUN", region9, country111);
        Orange_TUNISIA = new Mno("Orange_TN", "", region9, country111);
        TUNISIETELECOM_TUNISIA = new Mno("TunisieTelecom_TN", "", region9, country111);
        Country country112 = Country.SOUTHAFRICA;
        CELLC_SOUTHAFRICA = new Mno("CellC_ZA", "XFA,XFV", region9, country112);
        MTN_SOUTHAFRICA = new Mno("MTN_ZA", "", region9, country112);
        VODACOM_SOUTHAFRICA = new Mno("Vodacom_ZA", "", region9, country112);
        Country country113 = Country.DRC;
        VODACOM_DRC = new Mno("Vodacom_CD", "", region9, country113);
        MTN_DRC = new Mno("MTN_CD", "", region9, country113);
        TELKOM_SOUTHAFRICA = new Mno("Telkom_ZA", "", region9, country112);
        RAIN_SOUTHAFRICA = new Mno("Rain_ZA", "", region9, country112);
        TOGOCOM_TOGO = new Mno("Togocom_TG", "", region9, Country.TOGO);
        Country country114 = Country.TANZANIA;
        SMILE_TANZANIA = new Mno("Smile_TZ", "AFR", region9, country114);
        VODACOM_TANZANIA = new Mno("Vodacom_TZ", "", region9, country114);
        TIGO_TANZANIA = new Mno("Tigo_TZ", "", region9, country114);
        ZANTEL_TANZANIA = new Mno("Zantel_TZ", "", region9, country114);
        AIRTEL_TANZANIA = new Mno("Airtel_TZ", "", region9, country114);
        Country country115 = Country.MOZAMBIQUE;
        VODACOM_MOZAMBIQUE = new Mno("Vodacom_MZ", "XFE", region9, country115);
        MOVITEL_MOZAMBIQUE = new Mno("Movitel_MZ", "", region9, country115);
        Country country116 = Country.LESOTHO;
        VODACOM_LESOTHO = new Mno("Vodacom_LS", "", region9, country116);
        ECONET_LESOTHO = new Mno("Econet_LS", "", region9, country116);
        MASCOM_BOTSWANA = new Mno("Mascom_BW", "", region9, Country.BOTSWANA);
        Country country117 = Country.UGANDA;
        SMILE_UGANDA = new Mno("Smile_UG", "", region9, country117);
        AIRTEL_UGANDA = new Mno("Airtel_UG", "", region9, country117);
        MTN_UGANDA = new Mno("MTN_UG", "", region9, country117);
        Country country118 = Country.ZAMBIA;
        Airtel_ZAMBIA = new Mno("Airtel_ZM", "", region9, country118);
        MTN_ZAMBIA = new Mno("MTN_ZM", "", region9, country118);
        TELMA_MADAGASCAR = new Mno("TELMA_MG", "", region9, Country.MADAGASCAR);
        Country country119 = Country.GHANA;
        MTN_GHANA = new Mno("MTN_GH", "", region9, country119);
        VODAFONE_GHANA = new Mno("Vodafone_GH", "", region9, country119);
        Country country120 = Country.COTEDIVOIRE;
        ORANGE_COTEDIVOIRE = new Mno("ORANGE_CI", "", region9, country120);
        MTN_COTEDIVOIRE = new Mno("MTN_CI", "", region9, country120);
        Unitel_ANGOLA = new Mno("Unitel_AO", "", region9, Country.ANGOLA);
        CABLE_SEYCHELLES = new Mno("Cable_SC", "", region9, Country.SEYCHELLES);
        Country country121 = Country.KENYA;
        SAFARICOM_KENYA = new Mno("Safaricom_KE", "", region9, country121);
        SAFARICOM_ETHIOPIA = new Mno("Safaricom_ET", "", region9, country107);
        JTL_KENYA = new Mno("JTL_KE", "", region9, country121);
        Jambotel_KENYA = new Mno("Jambotel_KE", "", region9, country121);
        Airtel_KENYA = new Mno("Airtel_KE", "", region9, country121);
        SUDANI_SD = new Mno("Sudani_SD", "", region9, Country.SUDAN);
        Country country122 = Country.SOMALIA;
        SOMNET_SOMALIA = new Mno("Somnet_SO", "", region9, country122);
        HORMUUD_SOMALIA = new Mno("Hormuud_SO", "", region9, country122);
        Region region10 = Region.OCEANIA;
        Country country123 = Country.AUSTRALIA;
        OPTUS = new Mno("Optus_AU", "OPS,OPP", region10, country123);
        TELSTRA = new Mno("Telstra_AU", "TEL,XSA,TLP,ATS,S00", region10, country123);
        VODAFONE_AUSTRALIA = new Mno("Vodafone_AU", "VAU,VAP", region10, country123);
        Country country124 = Country.NEWZEALAND;
        TWO_DEGREE = new Mno("TwoDegree_NZ", "NZC,2DX,XNZ", region10, country124);
        VODAFONE_NEWZEALAND = new Mno("Vodafone_NZ", "VNZ,VNX", region10, country124);
        SPARK = new Mno("Spark_NZ", "TNZ,TNX", region10, country124);
        BLUESKY = new Mno("Bluesky_NZ", "", region10, country124);
        ASTCA = new Mno("Astca_NZ", "", region10, country124);
        VITI = new Mno("VITI_NZ", "", region10, country124);
        VODAFONEPNG_NEWZEALAND = new Mno("VodafonePNG_NZ", "", region10, country124);
        TUVALU = new Mno("Tuvalu_NZ", "", region10, country124);
        VODAFONEFIJI = new Mno("VodafoneFiji_NZ", "", region10, country124);
    }

    private static Mno getMnoFromSalesCode(String str) {
        for (Mno mno : sTable) {
            if (!TextUtils.isEmpty(mno.mSalesCode)) {
                for (String str2 : mno.mSalesCode.split(",")) {
                    if (str2.equals(str)) {
                        return mno;
                    }
                }
            }
        }
        return DEFAULT;
    }

    public static Mno fromSalesCode(String str) {
        if (getMockMno() != null) {
            return getMockMno();
        }
        if ("EUX".equals(str) || "EUY".equals(str)) {
            return getMnoByTssConcept();
        }
        if ("TFN".equals(str)) {
            return VZW;
        }
        return getMnoFromSalesCode(str);
    }

    public static Mno fromName(String str) {
        String str2 = LOG_TAG;
        Log.d(str2, "fromName: " + str);
        String mockMnoname = getMockMnoname();
        if (!TextUtils.isEmpty(mockMnoname)) {
            Log.d(str2, "fromName: use mockMnoname: " + mockMnoname);
            str = mockMnoname;
        }
        if (TextUtils.isEmpty(str)) {
            return DEFAULT;
        }
        int indexOf = str.indexOf(MVNO_DELIMITER);
        if (indexOf != -1) {
            str = str.substring(0, indexOf);
        }
        for (Mno mno : sTable) {
            if (mno.getName().equalsIgnoreCase(str)) {
                Log.d(LOG_TAG, "fromName: found mno : " + mno + ", " + mno.getCountryCode());
                return mno;
            }
        }
        Log.d(LOG_TAG, "fromName: not found mno");
        return DEFAULT;
    }

    public static String getMockOperatorCode() {
        return SemSystemProperties.get(MOCK_MNO_PROPERTY, "");
    }

    public static String getMockMnoname() {
        return SemSystemProperties.get(MOCK_MNONAME_PROPERTY, "");
    }

    public static Mno getMockMno() {
        String mockMnoname = getMockMnoname();
        if (TextUtils.isEmpty(mockMnoname)) {
            return null;
        }
        Mno fromName = fromName(mockMnoname);
        if (fromName != null) {
            Log.d(LOG_TAG, "getMockMno: returning mock Mno " + fromName);
        }
        return fromName;
    }

    private static Mno getMnoByTssConcept() {
        String str = SemSystemProperties.get("ro.boot.activatedid", "");
        String countryIso = SemSystemProperties.getCountryIso();
        if (TextUtils.isEmpty(str) || "EUX".equalsIgnoreCase(str) || "EUY".equalsIgnoreCase(str)) {
            str = OmcCode.getOpenBuyerByCountryIso(countryIso);
        }
        return getMnoFromSalesCode(str);
    }

    protected Mno() {
        this.mSalesCode = "";
        this.mRegion = Region.END_OF_REGION;
        this.mCountry = Country.END_OF_COUNTRY;
        this.mName = "DEFAULT";
    }

    private Mno(String str, String str2, Region region, Country country) {
        this.mSalesCode = "";
        this.mRegion = Region.END_OF_REGION;
        Country country2 = Country.GCF;
        this.mName = str;
        this.mSalesCode = str2;
        this.mRegion = region;
        this.mCountry = country;
        sTable.add(this);
    }

    public String getName() {
        return this.mName;
    }

    public String getMatchedSalesCode(String str) {
        String[] allSalesCodes = getAllSalesCodes();
        for (String str2 : allSalesCodes) {
            if (str2.equals(str)) {
                return str;
            }
        }
        return allSalesCodes[0];
    }

    public boolean equalsWithSalesCode(Mno mno, String str) {
        return this == mno && getMatchedSalesCode(str).equals(str);
    }

    public String getMatchedNetworkCode(String str) {
        String[] allSalesCodes = getAllSalesCodes();
        if (fromSalesCode(str) == SPRINT) {
            return allSalesCodes[0];
        }
        return getMatchedSalesCode(str);
    }

    public String[] getAllSalesCodes() {
        return this.mSalesCode.split(",");
    }

    public static void updateGenerictMno(String str) {
        Country countryFromMnomap = getCountryFromMnomap(str);
        Mno mno = GENERIC;
        mno.mName = str;
        mno.mCountry = countryFromMnomap;
        mno.mRegion = countryFromMnomap.getRegion();
        Log.d(LOG_TAG, "updateGenerictMno: GENERIC.mName = " + GENERIC.mName + ", GENERIC.mCountry =" + GENERIC.mCountry + " GENERIC.mRegion = " + GENERIC.mRegion);
    }

    public static Country getCountryFromMnomap(String str) {
        if (TextUtils.isEmpty(str)) {
            return Country.END_OF_COUNTRY;
        }
        int indexOf = str.indexOf("_");
        if (indexOf != -1) {
            int indexOf2 = str.indexOf(MVNO_DELIMITER);
            if (indexOf2 == -1) {
                indexOf2 = str.length();
            }
            String substring = str.substring(indexOf + 1, indexOf2);
            Log.d(LOG_TAG, "getCountryFromMnomap: countryCode = " + substring);
            for (Country country : Country.values()) {
                if (TextUtils.equals(country.getCountryIso(), substring)) {
                    return country;
                }
            }
        }
        return Country.END_OF_COUNTRY;
    }

    public static Region getRegionOfDevice() {
        String countryIso = SemSystemProperties.getCountryIso();
        Log.d(LOG_TAG, "getRegionOfDevice: deviceCountryCode = " + countryIso);
        for (Country country : Country.values()) {
            if (TextUtils.equals(country.getCountryIso(), countryIso)) {
                return country.getRegion();
            }
        }
        return Region.END_OF_REGION;
    }

    public String getCountryCode() {
        return this.mCountry.getCountryIso();
    }

    public boolean isUSA() {
        return this.mCountry == Country.US;
    }

    public boolean isKor() {
        return this.mCountry == Country.KOREA;
    }

    public boolean isJpn() {
        return this.mCountry == Country.JAPAN;
    }

    public boolean isChn() {
        return this.mCountry == Country.CHINA || this == CTCMO;
    }

    public boolean isHk() {
        return this.mCountry == Country.HONGKONG;
    }

    public boolean isHkMo() {
        Country country = this.mCountry;
        return country == Country.HONGKONG || (country == Country.MACAU && this != CTCMO);
    }

    public boolean isTw() {
        return this.mCountry == Country.TAIWAN;
    }

    public boolean isEur() {
        return this.mRegion == Region.EUROPE;
    }

    public boolean isAfrica() {
        return this.mRegion == Region.AFRICA;
    }

    public boolean isSea() {
        return this.mRegion == Region.SOUTH_EAST_ASIA;
    }

    public boolean isSG() {
        return this.mCountry == Country.SINGAPORE;
    }

    public boolean isMea() {
        Region region = this.mRegion;
        return region == Region.MIDDLE_EAST || region == Region.AFRICA;
    }

    public boolean isSwa() {
        return this.mRegion == Region.SOUTH_WEST_ASIA;
    }

    public boolean isRjil() {
        return this == RJIL;
    }

    public boolean isDish() {
        return this == DISH;
    }

    public boolean isAus() {
        return this.mCountry == Country.AUSTRALIA;
    }

    public boolean isNZ() {
        return this.mCountry == Country.NEWZEALAND;
    }

    public boolean isOce() {
        return this.mRegion == Region.OCEANIA;
    }

    public boolean isTeliaCo() {
        return this == TELIA_DK || this == TELIA_FINLAND || this == TELIA_NORWAY || this == TELIA_SWE;
    }

    public boolean isCanada() {
        return this.mCountry == Country.CANADA;
    }

    public boolean isIndia() {
        return this.mCountry == Country.INDIA;
    }

    public boolean isVietnam() {
        return this.mCountry == Country.VIETNAM;
    }

    public boolean isBrunei() {
        return this.mCountry == Country.BRUNEI;
    }

    public boolean isLatin() {
        return this != ATT_MEXICO && this.mRegion == Region.SOUTH_AMERICA;
    }

    public boolean isATTMexico() {
        return this == ATT_MEXICO;
    }

    public boolean isVodafone() {
        return isOneOf(VODAFONE_UK, VODAFONE, VODAFONE_SPAIN, VODAFONE_ITALY, VODAFONE_NETHERLAND, VODAFONE_HUNGARY, VODAFONE_IRELAND, VODACOM_SOUTHAFRICA, VODAFONE_GREECE, VODAFONE_ROMANIA, VODAFONE_PORTUGAL, VODAFONE_CROATIA, VODAFONE_TURKEY, VODAFONE_ALBANIA, VODAFONE_CZ, VODAFONE_CY);
    }

    public boolean isTmobile() {
        return isOneOf(TMOBILE, TMOBILE_CZ, TMOBILE_PL, TMOBILE_HUNGARY, TMOBILE_NED, TMOBILE_GREECE, TMOBILE_CROATIA, TMOBILE_SLOVAKIA, TMOBILE_AUSTRIA, TMOBILE_MK, TMOBILE_ROMANIA, TMOBILE_ME);
    }

    public boolean isOrange() {
        return isOneOf(ORANGE, ORANGE_BELGIUM, ORANGE_LUXEMBOURG, ORANGE_POLAND, ORANGE_ROMANIA, ORANGE_SLOVAKIA, ORANGE_MOROCCO, ORANGE_SENEGAL, ORANGE_SPAIN, ORANGE_MOLDOVA, SPM);
    }

    public boolean isOrangeGPG() {
        return isOneOf(ORANGE, ORANGE_BELGIUM, ORANGE_LUXEMBOURG, ORANGE_POLAND, ORANGE_ROMANIA, ORANGE_SLOVAKIA, ORANGE_SENEGAL, ORANGE_SPAIN, SPM, ORANGE_JO, ORANGE_EG, ORANGE_LIBERIA);
    }

    public boolean isSprint() {
        return this == SPRINT;
    }

    public boolean isAmerica() {
        Region region = this.mRegion;
        return region == Region.SOUTH_AMERICA || region == Region.NORTH_AMERICA;
    }

    public String toString() {
        return this.mName;
    }

    public boolean isEmeasewaoce() {
        Region region = this.mRegion;
        return region == Region.EUROPE || region == Region.MIDDLE_EAST || region == Region.AFRICA || region == Region.SOUTH_EAST_ASIA || region == Region.SOUTH_WEST_ASIA || region == Region.OCEANIA;
    }

    public boolean isOneOf(Mno... mnoArr) {
        for (Mno mno : mnoArr) {
            if (this == mno) {
                return true;
            }
        }
        return false;
    }
}
