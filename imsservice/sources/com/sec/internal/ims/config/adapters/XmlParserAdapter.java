package com.sec.internal.ims.config.adapters;

import android.util.Log;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.interfaces.ims.config.IXmlParserAdapter;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public class XmlParserAdapter implements IXmlParserAdapter {
    private static final String ATTR_VALUE_ADDRESS = "address";
    private static final String ATTR_VALUE_ADDRESS_TYPE = "addresstype";
    private static final String ATTR_VALUE_APPID = "appid";
    private static final String ATTR_VALUE_APPLICATION = "application";
    private static final String ATTR_VALUE_CONREF = "conref";
    private static final String ATTR_VALUE_ICSI = "icsi";
    private static final String ATTR_VALUE_ICSI_RESOURCE_ALLOCATION_MODE = "icsi_resource_allocation_mode";
    private static final String ATTR_VALUE_PHONE_CONTEXT = "phonecontext";
    private static final String ATTR_VALUE_PUBLIC_USER_IDENTITY = "public_user_identity";
    private static final String LOG_TAG = "XmlParserAdapter";
    private static final String PATH_DIVIDER = "/";
    private static final String PATH_ROOT = "root";
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
    private static final String TAG_WAPPROVISIONINGDOC_ATTR_VERSION = "version";
    private int mApplicationListPosition;
    private boolean mIsParsingApplicationCharacterisitic;
    protected final Map<String, List<Pattern>> mListTagName;
    private Map<String, String> mTmpMap;
    private static final Pattern APP_PATH_FRAGMENT_PATTERN = Pattern.compile("application/[0-9]+");
    private static final Pattern LBO_PCSCF_ADDRESS_PATTERN = Pattern.compile(".*application/[0-9]+/lbo_p-cscf_address/address");
    private static final Pattern LBO_PCSCF_ADDRESS_TYPE_PATTERN = Pattern.compile(".*application/[0-9]+/lbo_p-cscf_address/addresstype");
    private static final Pattern PHONE_CONTEXT_LIST_PHONE_CONTEXT_PATTERN = Pattern.compile(".*application/[0-9]+/phonecontext_list/phonecontext");
    private static final Pattern PHONE_CONTEXT_LIST_PUBLIC_USER_IDENTITY_PATTERN = Pattern.compile(".*application/[0-9]+/phonecontext_list/public_user_identity");
    private static final Pattern PUBLIC_USER_IDENTITY_LIST_PUBLIC_USER_IDENTITY_PATTERN = Pattern.compile(".*application/[0-9]+/public_user_identity_list/public_user_identity");
    private static final Pattern ICSI_LIST_ICSI_PATTERN = Pattern.compile(".*application/[0-9]+/icsi_list/icsi");
    private static final Pattern ICSI_LIST_ICSI_RESOURCE_ALLOCATION_MODE_PATTERN = Pattern.compile(".*application/[0-9]+/icsi_list/icsi_resource_allocation_mode");
    private static final Pattern CONREFS_CONREF_PATTERN = Pattern.compile(".*application/[0-9]+/conrefs/conref");

    public XmlParserAdapter() {
        Log.i(LOG_TAG, "Init XmlParser");
        TreeMap treeMap = new TreeMap();
        this.mListTagName = treeMap;
        treeMap.put(ATTR_VALUE_APPLICATION, null);
        treeMap.put(ATTR_VALUE_CONREF, Collections.singletonList(CONREFS_CONREF_PATTERN));
        treeMap.put(ATTR_VALUE_ICSI, Collections.singletonList(ICSI_LIST_ICSI_PATTERN));
        treeMap.put(ATTR_VALUE_ICSI_RESOURCE_ALLOCATION_MODE, Collections.singletonList(ICSI_LIST_ICSI_RESOURCE_ALLOCATION_MODE_PATTERN));
        treeMap.put("address", Collections.singletonList(LBO_PCSCF_ADDRESS_PATTERN));
        treeMap.put("addresstype", Collections.singletonList(LBO_PCSCF_ADDRESS_TYPE_PATTERN));
        treeMap.put(ATTR_VALUE_PHONE_CONTEXT, Collections.singletonList(PHONE_CONTEXT_LIST_PHONE_CONTEXT_PATTERN));
        treeMap.put("public_user_identity", Arrays.asList(PHONE_CONTEXT_LIST_PUBLIC_USER_IDENTITY_PATTERN, PUBLIC_USER_IDENTITY_LIST_PUBLIC_USER_IDENTITY_PATTERN));
        treeMap.put("node", null);
    }

    private void parseWapProvisioningDocTag(XmlPullParser xmlPullParser, String str) {
        String attributeName = xmlPullParser.getAttributeName(0);
        Locale locale = Locale.US;
        String lowerCase = attributeName.toLowerCase(locale);
        String lowerCase2 = xmlPullParser.getAttributeValue(0).toLowerCase(locale);
        if (lowerCase.equals("version")) {
            Log.i(LOG_TAG, str + " " + lowerCase + ":" + lowerCase2);
            return;
        }
        Log.i(LOG_TAG, "unknown '" + str + "' attr name:" + lowerCase);
    }

    private void setCharacteristicListTagCount(List<String> list, Map<String, Integer> map, String str) {
        int increaseListTagCount = increaseListTagCount(map, convertList(list));
        list.set(list.size() - 1, str + PATH_DIVIDER + increaseListTagCount);
        if (str.equals(ATTR_VALUE_APPLICATION)) {
            this.mApplicationListPosition = increaseListTagCount;
            this.mIsParsingApplicationCharacterisitic = true;
        }
    }

    private void parseCharacteristicTag(XmlPullParser xmlPullParser, List<String> list, Map<String, Integer> map, String str) {
        String attributeName = xmlPullParser.getAttributeName(0);
        Locale locale = Locale.US;
        String lowerCase = attributeName.toLowerCase(locale);
        String lowerCase2 = xmlPullParser.getAttributeValue(0).toLowerCase(locale);
        if (lowerCase.equals("type")) {
            list.add(lowerCase2);
            if (checkListTag(list, lowerCase2, this.mListTagName)) {
                setCharacteristicListTagCount(list, map, lowerCase2);
                return;
            }
            return;
        }
        Log.i(LOG_TAG, "unknown '" + str + "' attr name:" + lowerCase);
    }

    private boolean isParamTag(XmlPullParser xmlPullParser, String str) {
        String attributeName = xmlPullParser.getAttributeName(0);
        Locale locale = Locale.US;
        String lowerCase = attributeName.toLowerCase(locale);
        String lowerCase2 = xmlPullParser.getAttributeName(1).toLowerCase(locale);
        if (lowerCase.equals("name") && lowerCase2.equals("value")) {
            return true;
        }
        Log.i(LOG_TAG, "unknown '" + str + "' attr name:" + lowerCase + "," + lowerCase2);
        return false;
    }

    private String parseParamListTag(List<String> list, Map<String, Integer> map, String str) {
        list.add(str);
        String convertList = convertList(list);
        if (!checkListTag(list, str, this.mListTagName)) {
            return convertList;
        }
        int increaseListTagCount = increaseListTagCount(map, convertList);
        list.set(list.size() - 1, str + PATH_DIVIDER + increaseListTagCount);
        return convertList(list);
    }

    private void parseParamTag(XmlPullParser xmlPullParser, List<String> list, Map<String, Integer> map, String str, Map<String, String> map2) {
        if (isParamTag(xmlPullParser, str)) {
            if (ATTR_VALUE_APPID.equalsIgnoreCase(xmlPullParser.getAttributeValue(0))) {
                this.mIsParsingApplicationCharacterisitic = false;
                String str2 = ConfigConstants.APPID_MAP.get(xmlPullParser.getAttributeValue(1));
                Log.i(LOG_TAG, "position: " + this.mApplicationListPosition + " appid: " + xmlPullParser.getAttributeValue(1) + " replacement: " + str2);
                String str3 = "application/" + this.mApplicationListPosition;
                String str4 = "application/" + str2;
                Iterator<String> it = list.iterator();
                int i = 0;
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (APP_PATH_FRAGMENT_PATTERN.matcher(it.next()).matches()) {
                        list.set(i, str4);
                        break;
                    }
                    i++;
                }
                for (Map.Entry<String, String> entry : this.mTmpMap.entrySet()) {
                    String key = entry.getKey();
                    if (key.contains(str3)) {
                        key = key.replace(str3, str4);
                    }
                    map2.put(key, entry.getValue());
                }
                this.mTmpMap.clear();
            }
            String parseParamListTag = parseParamListTag(list, map, xmlPullParser.getAttributeValue(0).toLowerCase(Locale.US));
            if (this.mIsParsingApplicationCharacterisitic) {
                this.mTmpMap.put(parseParamListTag, xmlPullParser.getAttributeValue(1));
            } else {
                map2.put(parseParamListTag, xmlPullParser.getAttributeValue(1));
            }
        }
    }

    private void parseStartTag(XmlPullParser xmlPullParser, List<String> list, List<String> list2, Map<String, Integer> map, Map<String, String> map2) {
        String lowerCase = xmlPullParser.getName().toLowerCase(Locale.US);
        int attributeCount = xmlPullParser.getAttributeCount();
        if (lowerCase.equals(TAG_WAPPROVISIONINGDOC) && attributeCount == 1) {
            parseWapProvisioningDocTag(xmlPullParser, lowerCase);
            return;
        }
        if (lowerCase.equals(TAG_CHARACTERISTIC) && attributeCount == 1) {
            parseCharacteristicTag(xmlPullParser, list, map, lowerCase);
            return;
        }
        if ((lowerCase.equals(TAG_PARM) || lowerCase.equals("param")) && attributeCount == 2) {
            parseParamTag(xmlPullParser, list, map, lowerCase, map2);
            return;
        }
        String str = LOG_TAG;
        Log.i(str, "unknown tag or count:" + lowerCase + "," + attributeCount);
        list2.add(lowerCase);
        StringBuilder sb = new StringBuilder();
        sb.append("unknownTags size:");
        sb.append(list2.size());
        Log.i(str, sb.toString());
    }

    protected void parseEndTag(XmlPullParser xmlPullParser, List<String> list, List<String> list2, Map<String, Integer> map) {
        String lowerCase = xmlPullParser.getName().toLowerCase(Locale.US);
        if (list2.contains(lowerCase)) {
            Log.i(LOG_TAG, "size of Unknown Tags " + list2.size());
            list2.remove(lowerCase);
            return;
        }
        if (list.isEmpty()) {
            return;
        }
        list.remove(list.size() - 1);
    }

    @Override // com.sec.internal.interfaces.ims.config.IXmlParserAdapter
    public Map<String, String> parse(String str) {
        this.mTmpMap = new TreeMap();
        this.mIsParsingApplicationCharacterisitic = false;
        this.mApplicationListPosition = -1;
        TreeMap treeMap = new TreeMap();
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            newPullParser.setInput(new StringReader(str));
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            TreeMap treeMap2 = new TreeMap();
            arrayList.add(PATH_ROOT);
            Log.i(LOG_TAG, "Start document");
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                if (eventType == 2) {
                    parseStartTag(newPullParser, arrayList, arrayList2, treeMap2, treeMap);
                } else if (eventType == 3) {
                    parseEndTag(newPullParser, arrayList, arrayList2, treeMap2);
                }
            }
            Log.i(LOG_TAG, "End document");
        } catch (IOException | NullPointerException | XmlPullParserException e) {
            e.printStackTrace();
        }
        Log.i(LOG_TAG, "+++ parsed data");
        for (Map.Entry<String, String> entry : treeMap.entrySet()) {
            displayParsedData(entry.getKey(), entry.getValue());
        }
        Log.i(LOG_TAG, "--- parsed data");
        return treeMap;
    }

    private void displayParsedData(String str, String str2) {
        IMSLog.s(LOG_TAG, "path:" + str + ",value:" + str2);
    }

    private String convertList(List<String> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(PATH_DIVIDER);
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    private boolean checkListTag(List<String> list, String str, Map<String, List<Pattern>> map) {
        if (!map.containsKey(str)) {
            return false;
        }
        String convertList = convertList(list);
        List<Pattern> list2 = map.get(str);
        if (list2 == null) {
            return true;
        }
        Iterator<Pattern> it = list2.iterator();
        while (it.hasNext()) {
            if (it.next().matcher(convertList).matches()) {
                return true;
            }
        }
        return false;
    }

    private int increaseListTagCount(Map<String, Integer> map, String str) {
        Integer num = map.get(str);
        int intValue = num != null ? num.intValue() + 1 : 0;
        map.put(str, Integer.valueOf(intValue));
        return intValue;
    }
}
