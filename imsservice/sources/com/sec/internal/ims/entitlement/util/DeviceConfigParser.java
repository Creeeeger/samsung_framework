package com.sec.internal.ims.entitlement.util;

import android.util.Xml;
import com.google.gson.JsonSyntaxException;
import com.sec.internal.constants.ims.entitilement.data.DeviceConfiguration;
import com.sec.internal.log.IMSLog;
import com.stanfy.gsonxml.GsonXml;
import com.stanfy.gsonxml.GsonXmlBuilder;
import com.stanfy.gsonxml.XmlParserCreator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public final class DeviceConfigParser {
    private static final String LOG_TAG = "DeviceConfigParser";
    public static final XmlParserCreator PARSER_CREATOR = new XmlParserCreator() { // from class: com.sec.internal.ims.entitlement.util.DeviceConfigParser.1
        public XmlPullParser createParser() {
            try {
                try {
                    return Xml.newPullParser();
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            } catch (Exception unused) {
                XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
                return newPullParser;
            }
        }
    };

    private DeviceConfigParser() {
    }

    static GsonXml createGsonXml(boolean z) {
        return new GsonXmlBuilder().setXmlParserCreator(PARSER_CREATOR).setTreatNamespaces(z).setSameNameLists(true).create();
    }

    public static DeviceConfiguration parseDeviceConfig(String str) {
        IMSLog.s(LOG_TAG, "deviceConfigXml: " + str);
        if (str == null) {
            return null;
        }
        try {
            return (DeviceConfiguration) createGsonXml(false).fromXml(str, DeviceConfiguration.class);
        } catch (JsonSyntaxException e) {
            IMSLog.s(LOG_TAG, "parseDeviceConfig: malformed device config xml" + e.getMessage());
            return null;
        }
    }
}
