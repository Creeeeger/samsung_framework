package com.sec.internal.ims.servicemodules.ss;

import android.os.Build;
import android.os.SemSystemProperties;
import android.text.TextUtils;
import android.util.Log;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.XmlElement;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.ss.CallBarringData;
import com.sec.internal.ims.servicemodules.ss.CallForwardingData;
import com.sec.internal.ims.servicemodules.ss.SsRuleData;
import com.sec.internal.interfaces.ims.core.ISimManager;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class UtUtils {
    public static final String DOMAIN_NAME = ".3gppnetwork.org";
    private static final String LOG_TAG = "UtUtils";
    private static final Pattern PATTERN_TEL_NUMBER = Pattern.compile("[+]?[#*\\-.()0-9]+");
    private static final Pattern PATTERN_WHITE_SPACES = Pattern.compile("\\s+");
    public static final String XCAP_DOMAIN_NAME = ".pub.3gppnetwork.org";
    public static final String XMLNS_CP = "urn:ietf:params:xml:ns:common-policy";
    public static final String XMLNS_SS = "http://uri.etsi.org/ngn/params/xml/simservs/xcap";

    public static int doconvertCBType(boolean z, int i) {
        switch (i) {
            case 1:
            case 5:
            case 6:
            case 9:
            case 10:
                return z ? 103 : 102;
            case 2:
            case 3:
            case 4:
            case 8:
                return z ? 105 : 104;
            case 7:
                return z ? 119 : 118;
            default:
                return 0;
        }
    }

    public static String doconvertCondition(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 6 ? "" : "not-registered" : "not-reachable" : "no-answer" : "busy";
    }

    public static boolean isCallBarringType(int i) {
        return i == 102 || i == 103 || i == 104 || i == 105;
    }

    public static XmlElement makeMultipleXml(CallForwardingData callForwardingData, Mno mno, boolean z) {
        XmlElement makeSingleXml;
        XmlElement addAttribute = new XmlElement("communication-diversion").addAttribute(SoftphoneNamespaces.SoftphoneCallHandling.ACTIVE, CloudMessageProviderContract.JsonData.TRUE);
        if (z) {
            addAttribute.setNamespace("ss").addAttribute("xmlns:ss", XMLNS_SS);
        }
        int i = callForwardingData.replyTimer;
        if (i > 0 && mno != Mno.FET) {
            addAttribute.addChildElement(makeNoReplyTimerXml(i, z));
        }
        XmlElement addAttribute2 = new XmlElement("ruleset").setNamespace(SoftphoneNamespaces.SoftphoneCallHandling.COMMON_POLICY_NS_PREFIX).addAttribute("xmlns:cp", XMLNS_CP);
        for (SsRuleData.SsRule ssRule : callForwardingData.rules) {
            if (mno == Mno.FET && ssRule.conditions.condition == 2) {
                makeSingleXml = makeSingleXml((CallForwardingData.Rule) ssRule, z, mno, callForwardingData.replyTimer);
            } else {
                makeSingleXml = makeSingleXml((CallForwardingData.Rule) ssRule, z, mno);
            }
            addAttribute2.addChildElement(makeSingleXml);
        }
        addAttribute.addChildElement(addAttribute2);
        return addAttribute;
    }

    public static XmlElement makeNoReplyTimerXml(int i, boolean z) {
        XmlElement value = new XmlElement("NoReplyTimer").setValue(i);
        if (z) {
            value.setNamespace("ss");
        }
        return value;
    }

    public static XmlElement makeMultipleXml(CallBarringData callBarringData, int i, Mno mno, boolean z) {
        XmlElement addAttribute = new XmlElement(i == 105 ? UtElement.ELEMENT_OCB : UtElement.ELEMENT_ICB).addAttribute(SoftphoneNamespaces.SoftphoneCallHandling.ACTIVE, CloudMessageProviderContract.JsonData.TRUE);
        if (z) {
            addAttribute.setNamespace("ss").addAttribute("xmlns:ss", XMLNS_SS);
        }
        XmlElement addAttribute2 = new XmlElement("ruleset").setNamespace(SoftphoneNamespaces.SoftphoneCallHandling.COMMON_POLICY_NS_PREFIX).addAttribute("xmlns:cp", XMLNS_CP);
        Iterator<SsRuleData.SsRule> it = callBarringData.rules.iterator();
        while (it.hasNext()) {
            addAttribute2.addChildElement(makeSingleXml((CallBarringData.Rule) it.next(), mno, z));
        }
        addAttribute.addChildElement(addAttribute2);
        return addAttribute;
    }

    public static XmlElement makeSingleXml(String str, boolean z, boolean z2) {
        XmlElement addAttribute = new XmlElement(str).addAttribute(SoftphoneNamespaces.SoftphoneCallHandling.ACTIVE, z ? CloudMessageProviderContract.JsonData.TRUE : ConfigConstants.VALUE.INFO_COMPLETED);
        if (z2) {
            addAttribute.setNamespace("ss").addAttribute("xmlns:ss", XMLNS_SS);
        }
        return addAttribute;
    }

    public static XmlElement makeSingleXml(String str, int i, boolean z) {
        XmlElement xmlElement = new XmlElement(str);
        XmlElement xmlElement2 = new XmlElement(UtElement.ELEMENT_DEFAULT_BEHAV);
        if (z) {
            xmlElement.setNamespace("ss").addAttribute("xmlns:ss", XMLNS_SS);
            xmlElement2.setNamespace("ss");
        }
        xmlElement.addAttribute(SoftphoneNamespaces.SoftphoneCallHandling.ACTIVE, i == 0 ? ConfigConstants.VALUE.INFO_COMPLETED : CloudMessageProviderContract.JsonData.TRUE);
        xmlElement2.setValue(i == 1 ? UtElement.ELEMENT_CLI_RESTRICTED : UtElement.ELEMENT_CLI_NOT_RESTRICTED);
        xmlElement.addChildElement(xmlElement2);
        return xmlElement;
    }

    public static XmlElement makeSingleXml(CallForwardingData.Rule rule, boolean z, Mno mno) {
        return makeSingleXml(rule, z, mno, 0);
    }

    private static XmlElement setMediaElement(MEDIA media, boolean z) {
        XmlElement xmlElement = new XmlElement("media");
        if (z) {
            xmlElement.setNamespace("ss");
        }
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$servicemodules$ss$MEDIA[media.ordinal()];
        if (i == 1) {
            xmlElement.setValue("audio");
        } else if (i == 2) {
            xmlElement.setValue(SipMsg.FEATURE_TAG_MMTEL_VIDEO);
        }
        if (media != MEDIA.ALL) {
            return xmlElement;
        }
        return null;
    }

    /* renamed from: com.sec.internal.ims.servicemodules.ss.UtUtils$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$ss$MEDIA;

        static {
            int[] iArr = new int[MEDIA.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$ss$MEDIA = iArr;
            try {
                iArr[MEDIA.AUDIO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$ss$MEDIA[MEDIA.VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static XmlElement makeSingleXml(CallForwardingData.Rule rule, boolean z, Mno mno, int i) {
        XmlElement xmlElement;
        XmlElement addAttribute = new XmlElement("rule").setNamespace(SoftphoneNamespaces.SoftphoneCallHandling.COMMON_POLICY_NS_PREFIX).addAttribute("id", rule.ruleId);
        XmlElement namespace = new XmlElement("conditions").setNamespace(SoftphoneNamespaces.SoftphoneCallHandling.COMMON_POLICY_NS_PREFIX);
        if (!rule.conditions.state) {
            XmlElement xmlElement2 = new XmlElement("rule-deactivated");
            if (z) {
                xmlElement2.setNamespace("ss");
            }
            namespace.addChildElement(xmlElement2);
        }
        String doconvertCondition = doconvertCondition(rule.conditions.condition);
        if (!doconvertCondition.isEmpty()) {
            XmlElement xmlElement3 = new XmlElement(doconvertCondition);
            if (z) {
                xmlElement3.setNamespace("ss");
            }
            namespace.addChildElement(xmlElement3);
        }
        List<MEDIA> list = rule.conditions.media;
        if (list != null && list.size() > 0) {
            Iterator<MEDIA> it = rule.conditions.media.iterator();
            while (it.hasNext()) {
                XmlElement mediaElement = setMediaElement(it.next(), z);
                if (mediaElement != null) {
                    namespace.addChildElement(mediaElement);
                }
            }
        }
        addAttribute.addChildElement(namespace);
        XmlElement namespace2 = new XmlElement(SoftphoneNamespaces.SoftphoneCallHandling.ACTIONS).setNamespace(SoftphoneNamespaces.SoftphoneCallHandling.COMMON_POLICY_NS_PREFIX);
        XmlElement xmlElement4 = new XmlElement(SoftphoneNamespaces.SoftphoneCallHandling.FORWARD_TO);
        XmlElement xmlElement5 = new XmlElement(SoftphoneNamespaces.SoftphoneCallHandling.TARGET);
        if (z) {
            xmlElement4.setNamespace("ss");
            xmlElement5.setNamespace("ss");
        }
        if (!TextUtils.isEmpty(rule.fwdElm.target)) {
            xmlElement5.setValue(rule.fwdElm.target);
            xmlElement4.addChildElement(xmlElement5);
        } else if (!rule.conditions.state && TextUtils.isEmpty(rule.fwdElm.target)) {
            if (mno == Mno.ATT) {
                if (rule.conditions.action == 4) {
                    xmlElement4.addChildElement(xmlElement5);
                }
            } else {
                xmlElement4.addChildElement(xmlElement5);
            }
        }
        List<ForwardElm> list2 = rule.fwdElm.fwdElm;
        if (list2 != null && list2.size() > 0) {
            for (int i2 = 0; i2 < rule.fwdElm.fwdElm.size(); i2++) {
                String str = rule.fwdElm.fwdElm.get(i2).id;
                String str2 = rule.fwdElm.fwdElm.get(i2).value;
                String str3 = rule.fwdElm.fwdElm.get(i2).attribute;
                String[] split = str.split(":");
                if (split.length == 1) {
                    xmlElement = new XmlElement(str, str2);
                } else if (split.length == 2) {
                    xmlElement = new XmlElement(split[1], str2, split[0]);
                } else {
                    Log.e(LOG_TAG, "This is out of specification. So never come here");
                }
                if (str3 != null) {
                    String[] split2 = str3.split(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
                    if (split2.length == 2 && (split2[1].startsWith(CmcConstants.E_NUM_STR_QUOTE) || split2[1].startsWith("'"))) {
                        String str4 = split2[0];
                        String str5 = split2[1];
                        xmlElement.addAttribute(str4, str5.substring(1, str5.length() - 1));
                        if (z && xmlElement.mNamespace == null && xmlElement.mAttributes.isEmpty()) {
                            xmlElement.setNamespace("ss");
                        }
                        xmlElement4.addChildElement(xmlElement);
                    }
                }
                if (z) {
                    xmlElement.setNamespace("ss");
                }
                xmlElement4.addChildElement(xmlElement);
            }
        }
        namespace2.addChildElement(xmlElement4);
        if (i > 0) {
            namespace2.addChildElement(makeNoReplyTimerXml(i, z));
        }
        addAttribute.addChildElement(namespace2);
        return (mno == Mno.SMARTONE && rule.conditions.action == 4) ? namespace : addAttribute;
    }

    public static XmlElement makeSingleXml(CallBarringData.Rule rule, Mno mno, boolean z) {
        XmlElement xmlElement;
        List<MEDIA> list;
        XmlElement addAttribute = new XmlElement("rule").setNamespace(SoftphoneNamespaces.SoftphoneCallHandling.COMMON_POLICY_NS_PREFIX).addAttribute("id", rule.ruleId);
        XmlElement namespace = new XmlElement("conditions").setNamespace(SoftphoneNamespaces.SoftphoneCallHandling.COMMON_POLICY_NS_PREFIX);
        String doconvertCbCondition = doconvertCbCondition(rule.conditions.condition);
        if (!doconvertCbCondition.isEmpty()) {
            if (rule.conditions.condition == 10 && mno == Mno.KDDI) {
                XmlElement namespace2 = new XmlElement(UtElement.ELEMENT_IDENTITY).setNamespace(SoftphoneNamespaces.SoftphoneCallHandling.COMMON_POLICY_NS_PREFIX);
                Iterator<String> it = rule.target.iterator();
                while (it.hasNext()) {
                    namespace2.addChildElement(new XmlElement(UtElement.ELEMENT_ONE).setNamespace(SoftphoneNamespaces.SoftphoneCallHandling.COMMON_POLICY_NS_PREFIX).addAttribute("id", it.next()));
                }
                namespace.addChildElement(namespace2);
            } else {
                XmlElement xmlElement2 = new XmlElement(doconvertCbCondition);
                if (doconvertCbCondition.equals(UtElement.ELEMENT_IDENTITY)) {
                    xmlElement2.setNamespace(SoftphoneNamespaces.SoftphoneCallHandling.COMMON_POLICY_NS_PREFIX);
                } else if (z) {
                    xmlElement2.setNamespace("ss");
                }
                namespace.addChildElement(xmlElement2);
            }
        }
        Condition condition = rule.conditions;
        int i = condition.condition;
        if (i != 10 && i != 6 && (list = condition.media) != null && list.size() > 0) {
            Iterator<MEDIA> it2 = rule.conditions.media.iterator();
            while (it2.hasNext()) {
                XmlElement mediaElement = setMediaElement(it2.next(), z);
                if (mediaElement != null) {
                    namespace.addChildElement(mediaElement);
                }
            }
        }
        if (!rule.conditions.state) {
            XmlElement xmlElement3 = new XmlElement("rule-deactivated");
            if (z) {
                xmlElement3.setNamespace("ss");
            }
            namespace.addChildElement(xmlElement3);
        }
        XmlElement namespace3 = new XmlElement(SoftphoneNamespaces.SoftphoneCallHandling.ACTIONS).setNamespace(SoftphoneNamespaces.SoftphoneCallHandling.COMMON_POLICY_NS_PREFIX);
        XmlElement xmlElement4 = new XmlElement("allow");
        if (z) {
            xmlElement4.setNamespace("ss");
        }
        xmlElement4.setValue(ConfigConstants.VALUE.INFO_COMPLETED);
        namespace3.addChildElement(xmlElement4);
        if (mno.isOneOf(Mno.VIVACOM_BULGARIA, Mno.BATELCO_BAHRAIN, Mno.WIND_GREECE, Mno.CLARO_DOMINICAN, Mno.FET)) {
            for (ActionElm actionElm : rule.actions) {
                String[] split = actionElm.name.split(":");
                if (split.length == 1) {
                    xmlElement = new XmlElement(split[0], actionElm.value);
                } else if (split.length == 2) {
                    xmlElement = new XmlElement(split[1], actionElm.value, split[0]);
                } else {
                    Log.e(LOG_TAG, "This is out of specification. So never come here");
                }
                String str = actionElm.attribute;
                if (str != null) {
                    String[] split2 = str.split(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
                    if (split2.length == 2) {
                        if (split2[1].startsWith(CmcConstants.E_NUM_STR_QUOTE) || split2[1].startsWith("'")) {
                            String str2 = split2[0];
                            String str3 = split2[1];
                            xmlElement.addAttribute(str2, str3.substring(1, str3.length() - 1));
                        }
                    } else {
                        Log.e(LOG_TAG, "This is out of specification. So throw away attributes.");
                    }
                }
                if (z && xmlElement.mNamespace == null && xmlElement.mAttributes.isEmpty()) {
                    xmlElement.setNamespace("ss");
                }
                namespace3.addChildElement(xmlElement);
            }
        }
        addAttribute.addChildElement(namespace);
        addAttribute.addChildElement(namespace3);
        return addAttribute;
    }

    public static String doconvertCbCondition(int i) {
        Log.i(LOG_TAG, "convertICBtype type :" + i);
        return i != 3 ? i != 4 ? i != 5 ? i != 6 ? i != 10 ? "" : UtElement.ELEMENT_IDENTITY : "anonymous" : "roaming" : "international-exHC" : "international";
    }

    public static int doconvertMediaTypeToSsClass(List<MEDIA> list) {
        if (list == null) {
            return 255;
        }
        if (list.contains(MEDIA.VIDEO)) {
            return 16;
        }
        return list.contains(MEDIA.AUDIO) ? 1 : 255;
    }

    public static MEDIA convertToMedia(int i) {
        if (i == 1) {
            return MEDIA.AUDIO;
        }
        if (i == 16) {
            return MEDIA.VIDEO;
        }
        return MEDIA.ALL;
    }

    public static int convertCbTypeToBitMask(int i) {
        if (i == 1) {
            return 8;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if (i == 4) {
            return 4;
        }
        if (i == 5) {
            return 10;
        }
        Log.e(LOG_TAG, "unexpected cbType");
        return 0;
    }

    public static int doConvertIpVersion(String str) {
        Log.i(LOG_TAG, "doConvertIpVersion type : " + str);
        str.hashCode();
        switch (str) {
            case "ipv4only":
                return 1;
            case "ipv4pref":
                return 5;
            case "ipv6only":
                return 2;
            case "ipv6pref":
            case "ipv4v6":
                return 6;
            case "srv":
                return 4;
            case "naptr":
                return 3;
            default:
                return 0;
        }
    }

    private static String buildDomain(String str, String str2) {
        String str3;
        String str4;
        String lowerCase = str.toLowerCase(Locale.US);
        if (!lowerCase.contains("mncxxx.mccxxx")) {
            return lowerCase;
        }
        if (TextUtils.isEmpty(str2) || str2.length() < 5) {
            str3 = NSDSNamespaces.NSDSMigration.DEFAULT_KEY;
            str4 = NSDSNamespaces.NSDSMigration.DEFAULT_KEY;
        } else {
            str3 = str2.substring(0, 3);
            str4 = str2.substring(3);
            if (str4.length() == 2) {
                str4 = "0" + str4;
            }
        }
        return lowerCase.replace("mncxxx", "mnc" + str4).replace("mccxxx", "mcc" + str3);
    }

    public static String getNAFDomain(int i) {
        String str;
        String string = ImsRegistry.getString(i, GlobalSettingsConstants.SS.AUTH_PROXY_IP, "");
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        if (simManagerFromSimSlot == null) {
            return string;
        }
        Mno simMno = simManagerFromSimSlot.getSimMno();
        String simOperator = simManagerFromSimSlot.getSimOperator();
        if (simManagerFromSimSlot.hasNoSim()) {
            return string;
        }
        if (!TextUtils.isEmpty(string)) {
            return buildDomain(string, simOperator);
        }
        if (simManagerFromSimSlot.hasIsim()) {
            String impi = simManagerFromSimSlot.getImpi();
            if (impi == null) {
                return string;
            }
            if (simMno == Mno.BELL && ImsRegistry.getInt(i, GlobalSettingsConstants.SS.ENABLE_GBA, 0) == 1) {
                str = "naf." + impi.substring(impi.indexOf(64) + 1);
                Log.i(LOG_TAG, "xcapDomain :" + str);
            } else if (simMno == Mno.CMCC) {
                str = "xcap." + impi.substring(impi.indexOf(64) + 1);
                int indexOf = str.indexOf("mnc");
                if (indexOf > 0) {
                    str = str.replace(str.substring(indexOf, indexOf + 6), "mnc000");
                }
            } else {
                str = "xcap." + impi.substring(impi.indexOf(64) + 1);
            }
            String lowerCase = str.toLowerCase(Locale.US);
            return lowerCase.contains("3gppnetwork.org") ? lowerCase.replace("3gppnetwork.org", "pub.3gppnetwork.org") : lowerCase;
        }
        if (simOperator != null && simOperator.length() >= 5) {
            try {
                String substring = simOperator.substring(0, 3);
                String substring2 = simOperator.substring(3);
                if (simMno == Mno.CMCC) {
                    substring2 = NSDSNamespaces.NSDSMigration.DEFAULT_KEY;
                } else if (simMno == Mno.CTC) {
                    substring = "460";
                    substring2 = "011";
                } else if (simMno == Mno.CTCMO) {
                    substring = "455";
                    substring2 = "007";
                }
                return "xcap.ims.mnc" + String.format(Locale.US, "%03d", Integer.valueOf(Integer.parseInt(substring2))) + ".mcc" + substring + XCAP_DOMAIN_NAME;
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        return string;
    }

    public static String getBSFDomain(int i) {
        String string = ImsRegistry.getString(i, GlobalSettingsConstants.SS.BSF_IP, "");
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        if (simManagerFromSimSlot == null) {
            return string;
        }
        String simOperator = simManagerFromSimSlot.getSimOperator();
        if (simManagerFromSimSlot.hasNoSim() || !TextUtils.isEmpty(string)) {
            return buildDomain(string, simOperator);
        }
        if (simManagerFromSimSlot.hasIsim()) {
            String impi = simManagerFromSimSlot.getImpi();
            if (impi == null) {
                Log.e(LOG_TAG, "NULL IMPI received from SIM :: Returning DEFAULT BSFIP !!");
                return string;
            }
            int indexOf = impi.indexOf(64);
            if (indexOf <= 0 || indexOf == impi.length()) {
                return string;
            }
            String trim = impi.substring(indexOf + 1).trim();
            if (trim.endsWith(DOMAIN_NAME)) {
                int indexOf2 = trim.indexOf(DOMAIN_NAME);
                if (indexOf2 <= 0) {
                    return string;
                }
                return "bsf." + trim.substring(0, indexOf2) + XCAP_DOMAIN_NAME;
            }
            return "bsf." + trim;
        }
        if (simOperator != null && simOperator.length() >= 5) {
            try {
                return "bsf.mnc" + String.format(Locale.US, "%03d", Integer.valueOf(Integer.parseInt(simOperator.substring(3)))) + ".mcc" + simOperator.substring(0, 3) + XCAP_DOMAIN_NAME;
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        return string;
    }

    public static String generate3GPPDomain(ISimManager iSimManager) {
        if (iSimManager == null) {
            return null;
        }
        String simOperator = iSimManager.getSimOperator();
        if (simOperator == null || simOperator.length() < 5) {
            Log.e(LOG_TAG, "Invalid operator.");
            return null;
        }
        try {
            return "ims.mnc" + String.format(Locale.US, "%03d", Integer.valueOf(Integer.parseInt(simOperator.substring(3)))) + ".mcc" + simOperator.substring(0, 3) + DOMAIN_NAME;
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getNumberFromURI(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String replaceAll = PATTERN_WHITE_SPACES.matcher(str).replaceAll("");
        Pattern pattern = PATTERN_TEL_NUMBER;
        if (pattern.matcher(replaceAll).matches()) {
            return replaceAll;
        }
        ImsUri parse = ImsUri.parse(replaceAll);
        String msisdn = parse != null ? parse.getMsisdn() : "";
        if (msisdn == null) {
            msisdn = "";
        }
        return !pattern.matcher(msisdn).matches() ? "" : msisdn;
    }

    public static String makeInternationalNumber(String str, Mno mno) {
        int countryCodeForRegion = PhoneNumberUtil.getInstance().getCountryCodeForRegion(mno.getCountryCode());
        if (countryCodeForRegion == 0) {
            Log.i(LOG_TAG, "Invalid Country Code. Country Code : " + mno.getCountryCode());
            return str;
        }
        String str2 = "+" + countryCodeForRegion;
        if (str.charAt(0) != '0') {
            return str2 + str;
        }
        return str2 + str.substring(1);
    }

    public static String removeUriPlusPrefix(String str, String str2) {
        return (str == null || str.length() <= str2.length() || !str.startsWith(str2)) ? str : str.replace(str2, "0");
    }

    public static String getAcceptEncoding(int i) {
        return SimUtil.getSimMno(i).isOneOf(Mno.H3G, Mno.SMARTFREN, Mno.TMOUS, Mno.DISH, Mno.TELE2_RUSSIA) ? "" : "*";
    }

    public static String cleanBarringNum(String str) {
        return str.toLowerCase().contains("hidden") ? str : str.replaceAll(CmcConstants.E_NUM_SLOT_SPLIT, "");
    }

    public static boolean isBsfDisableTls(int i) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        return simManagerFromSimSlot != null && simManagerFromSimSlot.getSimMno().isOneOf(Mno.AIS);
    }

    public static String getDomain(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf("@")) <= 0) {
            return null;
        }
        return str.substring(indexOf + 1);
    }

    public static boolean isPutRequest(int i) {
        return i % 2 != 0;
    }

    public static String makeXcapUserAgentHeader(String str, int i) {
        String replace;
        String replace2;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = SemSystemProperties.get("ro.build.PDA");
        if (str2 != null && str2.length() > 3) {
            str = str.replace("[BUILD_VERSION]", str2.substring(str2.length() - 3));
        }
        if (str2 != null && str2.length() > 8) {
            str = str.replace("[BUILD_VERSION_8_LETTER]", str2.substring(str2.length() - 8));
        }
        String str3 = Build.MODEL;
        if ("unknown".equals(str3)) {
            replace = str.replace("[PRODUCT_MODEL]", SemSystemProperties.get("ro.product.base_model"));
        } else {
            replace = str.replace("[PRODUCT_MODEL]", str3);
        }
        if (DeviceUtil.isTablet()) {
            replace2 = replace.replace("[PRODUCT_TYPE]", "device-type/tablet");
        } else {
            replace2 = replace.replace("[PRODUCT_TYPE]", "device-type/smart-phone");
        }
        String replace3 = replace2.replace("[OMCCODE]", OmcCode.getUserAgentNWCode(i, SimUtil.getSimMno(i)));
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        return (simManagerFromSimSlot == null || !simManagerFromSimSlot.isSimAvailable()) ? replace3 : replace3.replace("[MCC_MNC]", simManagerFromSimSlot.getSimOperator());
    }

    protected static String[] getSetting(int i, String str, String[] strArr) {
        return ImsRegistry.getStringArray(i, str, strArr);
    }

    protected static boolean getSetting(int i, String str, boolean z) {
        return ImsRegistry.getBoolean(i, str, z);
    }

    protected static int getSetting(int i, String str, int i2) {
        return ImsRegistry.getInt(i, str, i2);
    }

    protected static String getSetting(int i, String str, String str2) {
        return ImsRegistry.getString(i, str, str2);
    }
}
