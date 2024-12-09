package com.sec.internal.ims.aec.util;

import android.text.TextUtils;
import com.sec.internal.constants.ims.aec.AECNamespace;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.log.AECLog;
import java.io.BufferedReader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public class ContentParser {
    private static final String ACCESS_TYPE = "accesstype";
    private static final String APPLICATION = "application";
    private static final String ENTITLEMENT_STATUS = "entitlementstatus";
    private static final String HOME_ROAMING_NW_TYPE = "homeroamingnwtype";
    private static final ArrayList<String> INCREASE_TAG_LIST = new ArrayList<String>() { // from class: com.sec.internal.ims.aec.util.ContentParser.1
        {
            add(ContentParser.APPLICATION);
            add(ContentParser.RAT_VOICE_ENTITLE_INFO_DETAILS);
        }
    };
    private static final String LOG_TAG = "ContentParser";
    private static final String MESSAGE_FOR_INCOMPATIBLE = "messageforincompatible";
    private static final String NETWORK_VOICE_IRAT_CAPABILITY = "networkvoiceiratcapability";
    private static final String PATH_DIVIDER = "/";
    private static final String PATH_ROOT = "root";
    private static final String RAT_VOICE_ENTITLE_INFO_DETAILS = "ratvoiceentitleinfodetails";
    private static final String TAG_CHARACTERISTIC = "characteristic";
    private static final int TAG_CHARACTERISTIC_ATTR_COUNT = 1;
    private static final String TAG_CHARACTERISTIC_ATTR_TYPE = "type";
    private static final String TAG_PARAM = "param";
    private static final String TAG_PARM = "parm";
    private static final int TAG_PARM_ATTR_COUNT = 2;
    private static final String TAG_PARM_ATTR_NAME = "name";
    private static final String TAG_PARM_ATTR_VALUE = "value";
    private static final String TAG_WAPPROVISIONINGDOC = "wap-provisioningdoc";
    private static final int TAG_WAPPROVISIONINGDOC_ATTR_COUNT = 1;
    private static final String VOLTE_4G = "volte/4G";
    private static final String VOLTE_5G = "volte/5G";

    public static synchronized boolean isJSONValid(List<String> list) {
        synchronized (ContentParser.class) {
            if (list != null) {
                if (!list.isEmpty()) {
                    return list.contains("application/vnd.gsma.eap-relay.v1.0+json");
                }
            }
            return false;
        }
    }

    public static synchronized boolean isJSONValid(String str) {
        synchronized (ContentParser.class) {
            try {
                new JSONObject(str);
            } catch (JSONException unused) {
                return false;
            }
        }
        return true;
    }

    public static synchronized boolean hasEapRelayPacket(String str) {
        boolean has;
        synchronized (ContentParser.class) {
            try {
                has = new JSONObject(str).has("eap-relay-packet");
            } catch (JSONException unused) {
                return false;
            }
        }
        return has;
    }

    public static synchronized Map<String, Map<String, String>> parseRATVoiceEntitleInfo(StringBuilder sb, JSONArray jSONArray) throws JSONException {
        TreeMap treeMap;
        synchronized (ContentParser.class) {
            treeMap = new TreeMap();
            if (jSONArray != null && jSONArray.length() > 0) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = new JSONObject(jSONArray.getString(i));
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        String lowerCase = (sb.toString() + next + PATH_DIVIDER + String.valueOf(i)).toLowerCase(Locale.US);
                        if (lowerCase.contains(RAT_VOICE_ENTITLE_INFO_DETAILS) && !treeMap.containsKey(lowerCase)) {
                            treeMap.put(lowerCase, new TreeMap());
                        }
                        Object obj = jSONObject.get(next);
                        if (obj instanceof JSONObject) {
                            JSONObject jSONObject2 = (JSONObject) obj;
                            if (jSONObject2.length() > 0) {
                                Iterator<String> keys2 = jSONObject2.keys();
                                while (keys2.hasNext()) {
                                    String next2 = keys2.next();
                                    ((Map) treeMap.get(lowerCase)).put(next2.toLowerCase(Locale.US), String.valueOf(jSONObject2.get(next2)));
                                }
                            }
                        }
                    }
                }
            }
        }
        return treeMap;
    }

    public static synchronized Map<String, String> parseJson(String str) throws Exception {
        Map<String, String> convertMap;
        synchronized (ContentParser.class) {
            TreeMap treeMap = new TreeMap();
            Map treeMap2 = new TreeMap();
            try {
                if (!TextUtils.isEmpty(str)) {
                    JSONObject jSONObject = new JSONObject(str);
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        Object obj = jSONObject.get(next);
                        if (obj instanceof JSONObject) {
                            JSONObject jSONObject2 = (JSONObject) obj;
                            if (jSONObject2.length() > 0) {
                                StringBuilder sb = new StringBuilder();
                                if (next.equalsIgnoreCase("vers")) {
                                    sb.append(ConfigConstants.ConfigPath.VERS_PATH);
                                } else if (next.equalsIgnoreCase("token")) {
                                    sb.append(ConfigConstants.ConfigPath.TOKEN_PATH);
                                } else if (next.equalsIgnoreCase("ap2003")) {
                                    treeMap.put(AECNamespace.Path.APPLICATION_0_APPID, "ap2003");
                                    sb.append(ConfigConstants.ConfigPath.APPLICATION_CHARACTERISTIC_PATH);
                                } else if (next.equalsIgnoreCase("ap2004")) {
                                    treeMap.put(AECNamespace.Path.APPLICATION_1_APPID, "ap2004");
                                    sb.append("root/application/1/");
                                } else if (next.equalsIgnoreCase("ap2005")) {
                                    treeMap.put(AECNamespace.Path.APPLICATION_2_APPID, "ap2005");
                                    sb.append("root/application/2/");
                                }
                                Iterator<String> keys2 = jSONObject2.keys();
                                while (keys2.hasNext()) {
                                    String next2 = keys2.next();
                                    if (next2.equalsIgnoreCase(AECNamespace.JsonKey.VoiceOverCellularEntitleInfo)) {
                                        sb.append(next2 + PATH_DIVIDER);
                                        treeMap2 = parseRATVoiceEntitleInfo(sb, jSONObject2.getJSONArray(AECNamespace.JsonKey.VoiceOverCellularEntitleInfo));
                                    } else {
                                        treeMap.put(((Object) sb) + next2.toLowerCase(Locale.US), String.valueOf(jSONObject2.get(next2)));
                                    }
                                }
                            }
                        } else {
                            treeMap.put("root/" + next, String.valueOf(obj));
                        }
                    }
                }
                if (!treeMap2.isEmpty()) {
                    treeMap.putAll(extractMap(treeMap2));
                }
                convertMap = convertMap(treeMap);
            } catch (Exception e) {
                throw new Exception("parseJson: " + e.getMessage());
            }
        }
        return convertMap;
    }

    public static synchronized Map<String, String> parseXml(String str) throws Exception {
        Map<String, String> convertMap;
        synchronized (ContentParser.class) {
            TreeMap treeMap = new TreeMap();
            TreeMap treeMap2 = new TreeMap();
            try {
                XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                newPullParser.setInput(new StringReader(replaceXMLCharacters(str)));
                ArrayList arrayList = new ArrayList();
                TreeMap treeMap3 = new TreeMap();
                arrayList.add(PATH_ROOT);
                for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                    if (eventType == 2) {
                        int attributeCount = newPullParser.getAttributeCount();
                        String name = newPullParser.getName();
                        Locale locale = Locale.US;
                        String lowerCase = name.toLowerCase(locale);
                        if (!lowerCase.equals(TAG_WAPPROVISIONINGDOC) || attributeCount != 1) {
                            if (lowerCase.equals(TAG_CHARACTERISTIC) && attributeCount == 1) {
                                String lowerCase2 = newPullParser.getAttributeName(0).toLowerCase(locale);
                                String lowerCase3 = newPullParser.getAttributeValue(0).toLowerCase(locale);
                                if (lowerCase2.equals("type")) {
                                    arrayList.add(lowerCase3);
                                    if (INCREASE_TAG_LIST.contains(lowerCase3)) {
                                        arrayList.set(arrayList.size() - 1, lowerCase3 + PATH_DIVIDER + increaseTagCount(treeMap3, convertList(arrayList)));
                                    }
                                }
                            } else if ((lowerCase.equals(TAG_PARM) || lowerCase.equals("param")) && attributeCount == 2) {
                                String lowerCase4 = newPullParser.getAttributeName(0).toLowerCase(locale);
                                String lowerCase5 = newPullParser.getAttributeValue(0).toLowerCase(locale);
                                String lowerCase6 = newPullParser.getAttributeName(1).toLowerCase(locale);
                                String attributeValue = newPullParser.getAttributeValue(1);
                                if (lowerCase4.equals("name") && lowerCase6.equals("value")) {
                                    String convertList = convertList(arrayList);
                                    if (convertList.contains(RAT_VOICE_ENTITLE_INFO_DETAILS)) {
                                        if (!treeMap2.containsKey(convertList)) {
                                            treeMap2.put(convertList, new TreeMap());
                                        }
                                        ((Map) treeMap2.get(convertList)).put(lowerCase5, attributeValue);
                                    } else {
                                        arrayList.add(lowerCase5);
                                        treeMap.put(convertList(arrayList), attributeValue);
                                    }
                                }
                            }
                        }
                    } else if (eventType == 3) {
                        if (convertList(arrayList).contains(RAT_VOICE_ENTITLE_INFO_DETAILS)) {
                            if (newPullParser.getName().toLowerCase(Locale.US).equals(TAG_CHARACTERISTIC)) {
                                arrayList.remove(arrayList.size() - 1);
                            }
                        } else {
                            arrayList.remove(arrayList.size() - 1);
                        }
                    }
                }
                if (!treeMap2.isEmpty()) {
                    treeMap.putAll(extractMap(treeMap2));
                }
                convertMap = convertMap(treeMap);
            } catch (Exception e) {
                throw new Exception("parseXml: " + e.getMessage());
            }
        }
        return convertMap;
    }

    public static synchronized void debugPrint(int i, Map<String, String> map) {
        synchronized (ContentParser.class) {
            if (!map.isEmpty()) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    AECLog.s(LOG_TAG, entry.getKey() + AuthenticationHeaders.HEADER_PRARAM_SPERATOR + entry.getValue(), i);
                }
            }
        }
    }

    private static String convertList(List<String> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(PATH_DIVIDER);
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    private static int increaseTagCount(Map<String, Integer> map, String str) {
        int intValue = map.containsKey(str) ? map.get(str).intValue() + 1 : 0;
        map.put(str, Integer.valueOf(intValue));
        return intValue;
    }

    private static String replaceXMLCharacters(String str) throws Exception {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new StringReader(str));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine.replaceAll("&", "&amp;"));
                } else {
                    bufferedReader.close();
                    return sb.toString();
                }
            } catch (Exception e) {
                throw new Exception("replaceXMLCharacters: " + e.getMessage());
            }
        }
    }

    private static Map<String, String> extractMap(String str, String str2, String str3, String str4, String str5) {
        AECLog.i(LOG_TAG, "extractMap: accessType =" + str + ", entitlement =" + str2 + ", messageIncompatible =" + str3 + ", networkType =" + str4 + ", voiceIRATCapabiltiy =" + str5);
        TreeMap treeMap = new TreeMap();
        try {
            TreeMap treeMap2 = new TreeMap();
            int parseInt = Integer.parseInt(str4);
            if (parseInt == 1) {
                treeMap2.put(AECNamespace.Path.VOLTE_HOME_ENTITLEMENT_STATUS, str2);
                treeMap2.put(AECNamespace.Path.VOLTE_ROAMING_ENTITLEMENT_STATUS, str2);
                treeMap2.put(AECNamespace.Path.VOLTE_HOME_MESSAGE_FOR_INCOMPATIBLE, str3);
                treeMap2.put(AECNamespace.Path.VOLTE_ROAMING_MESSAGE_FOR_INCOMPATIBLE, str3);
                treeMap2.put(AECNamespace.Path.VOLTE_HOME_NETWORK_VOICE_IRAT_CAPABILITY, str5);
                treeMap2.put(AECNamespace.Path.VOLTE_ROAMING_NETWORK_VOICE_IRAT_CAPABILITY, str5);
            } else if (parseInt == 2) {
                treeMap2.put(AECNamespace.Path.VOLTE_HOME_ENTITLEMENT_STATUS, str2);
                treeMap2.put(AECNamespace.Path.VOLTE_HOME_MESSAGE_FOR_INCOMPATIBLE, str3);
                treeMap2.put(AECNamespace.Path.VOLTE_HOME_NETWORK_VOICE_IRAT_CAPABILITY, str5);
            } else if (parseInt == 3) {
                treeMap2.put(AECNamespace.Path.VOLTE_ROAMING_ENTITLEMENT_STATUS, str2);
                treeMap2.put(AECNamespace.Path.VOLTE_ROAMING_MESSAGE_FOR_INCOMPATIBLE, str3);
                treeMap2.put(AECNamespace.Path.VOLTE_ROAMING_NETWORK_VOICE_IRAT_CAPABILITY, str5);
            }
            for (Map.Entry entry : treeMap2.entrySet()) {
                String str6 = (String) entry.getKey();
                if (1 == Integer.parseInt(str)) {
                    str6 = str6.replace("*", VOLTE_4G);
                } else if (2 == Integer.parseInt(str)) {
                    str6 = str6.replace("*", VOLTE_5G);
                }
                treeMap.put(str6, (String) entry.getValue());
            }
        } catch (NumberFormatException e) {
            AECLog.e(LOG_TAG, "extractMap: " + e.getMessage());
        }
        return treeMap;
    }

    private static Map<String, String> extractMap(Map<String, Map<String, String>> map) {
        TreeMap treeMap = new TreeMap();
        Iterator<Map.Entry<String, Map<String, String>>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map<String, String> value = it.next().getValue();
            treeMap.putAll(extractMap(value.getOrDefault(ACCESS_TYPE, "0"), value.getOrDefault(ENTITLEMENT_STATUS, "0"), value.getOrDefault(MESSAGE_FOR_INCOMPATIBLE, ""), value.getOrDefault(HOME_ROAMING_NW_TYPE, "0"), value.getOrDefault(NETWORK_VOICE_IRAT_CAPABILITY, "")));
        }
        return treeMap;
    }

    private static String convertServiceId(String str) {
        return str.equalsIgnoreCase("ap2003") ? "root/application/volte" : str.equalsIgnoreCase("ap2004") ? "root/application/vowifi" : str.equalsIgnoreCase("ap2005") ? "root/application/smsoip" : str;
    }

    private static Map<String, String> convertMap(Map<String, String> map) {
        TreeMap treeMap = new TreeMap();
        String convertServiceId = convertServiceId(map.getOrDefault(AECNamespace.Path.APPLICATION_0_APPID, ""));
        String convertServiceId2 = convertServiceId(map.getOrDefault(AECNamespace.Path.APPLICATION_1_APPID, ""));
        String convertServiceId3 = convertServiceId(map.getOrDefault(AECNamespace.Path.APPLICATION_2_APPID, ""));
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key.contains(AECNamespace.Path.APPLICATION_0) && !TextUtils.isEmpty(convertServiceId)) {
                key = key.replace(AECNamespace.Path.APPLICATION_0, convertServiceId.toLowerCase(Locale.ROOT));
            } else if (key.contains(AECNamespace.Path.APPLICATION_1) && !TextUtils.isEmpty(convertServiceId2)) {
                key = key.replace(AECNamespace.Path.APPLICATION_1, convertServiceId2.toLowerCase(Locale.ROOT));
            } else if (key.contains(AECNamespace.Path.APPLICATION_2) && !TextUtils.isEmpty(convertServiceId3)) {
                key = key.replace(AECNamespace.Path.APPLICATION_2, convertServiceId3.toLowerCase(Locale.ROOT));
            }
            treeMap.put(key, entry.getValue());
        }
        return treeMap;
    }
}
