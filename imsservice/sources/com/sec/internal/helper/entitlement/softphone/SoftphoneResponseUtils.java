package com.sec.internal.helper.entitlement.softphone;

import android.util.Xml;
import com.google.gson.Gson;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.log.IMSLog;
import com.stanfy.gsonxml.GsonXml;
import com.stanfy.gsonxml.GsonXmlBuilder;
import com.stanfy.gsonxml.XmlParserCreator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public class SoftphoneResponseUtils {
    private static final String LOG_TAG = "SoftphoneResponseUtils";
    public static final XmlParserCreator PARSER_CREATOR = new XmlParserCreator() { // from class: com.sec.internal.helper.entitlement.softphone.SoftphoneResponseUtils.1
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

    private SoftphoneResponseUtils() {
    }

    public static <T> T parseJsonResponse(String str, Class<T> cls) {
        if (str == null) {
            return null;
        }
        try {
            return (T) new Gson().fromJson(new JsonParser().parse(str), cls);
        } catch (JsonSyntaxException e) {
            IMSLog.s(LOG_TAG, "cannot parse result" + e.getMessage());
            return null;
        }
    }

    static GsonXml createGsonXml(boolean z) {
        return new GsonXmlBuilder().setXmlParserCreator(PARSER_CREATOR).setTreatNamespaces(z).setSameNameLists(true).create();
    }

    public static <T> T parseXmlResponse(String str, Class<T> cls, boolean z) {
        if (str == null) {
            return null;
        }
        try {
            return (T) createGsonXml(z).fromXml(str, cls);
        } catch (Exception e) {
            IMSLog.s(LOG_TAG, "cannot parse result" + e.getMessage());
            return null;
        }
    }

    public static <T> T parseJsonResponse(HttpResponseParams httpResponseParams, Class<T> cls, int i) {
        T t = null;
        if (httpResponseParams != null) {
            if (httpResponseParams.getStatusCode() == i) {
                T t2 = (T) parseJsonResponse(httpResponseParams.getDataString(), cls);
                IMSLog.i(LOG_TAG, "parseJsonResponse(): parsed response: " + t2);
                if (t2 == null) {
                    try {
                        t2 = cls.newInstance();
                    } catch (IllegalAccessException | InstantiationException | NoSuchFieldException e) {
                        IMSLog.s(LOG_TAG, "cannot parse result" + e.getMessage());
                        return t2;
                    }
                }
                cls.getField("mSuccess").setBoolean(t2, true);
                return t2;
            }
            try {
                t = cls.newInstance();
                cls.getField("mSuccess").setBoolean(t, false);
                cls.getField("mReason").set(t, getErrorString(httpResponseParams));
                cls.getField("mStatusCode").setInt(t, httpResponseParams.getStatusCode());
            } catch (IllegalAccessException | InstantiationException | NoSuchFieldException e2) {
                IMSLog.s(LOG_TAG, "cannot parse result" + e2.getMessage());
            }
        } else {
            try {
                t = cls.newInstance();
                cls.getField("mSuccess").setBoolean(t, false);
                cls.getField("mReason").set(t, "Null response");
                cls.getField("mStatusCode").setInt(t, 0);
            } catch (IllegalAccessException | InstantiationException | NoSuchFieldException e3) {
                IMSLog.s(LOG_TAG, "cannot parse result" + e3.getMessage());
            }
        }
        return t;
    }

    public static <T> T parseXmlResponse(HttpResponseParams httpResponseParams, Class<T> cls, int i, boolean z) {
        T t = null;
        if (httpResponseParams != null) {
            if (httpResponseParams.getStatusCode() == i) {
                T t2 = (T) parseXmlResponse(httpResponseParams.getDataString(), cls, z);
                if (t2 == null) {
                    try {
                        t2 = cls.newInstance();
                    } catch (IllegalAccessException | InstantiationException | NoSuchFieldException e) {
                        IMSLog.s(LOG_TAG, "cannot parse result" + e.getMessage());
                        return t2;
                    }
                }
                cls.getField("mSuccess").setBoolean(t2, true);
                return t2;
            }
            try {
                t = cls.newInstance();
                cls.getField("mSuccess").setBoolean(t, false);
                cls.getField("mReason").set(t, getErrorString(httpResponseParams));
                cls.getField("mStatusCode").setInt(t, httpResponseParams.getStatusCode());
            } catch (IllegalAccessException | InstantiationException | NoSuchFieldException e2) {
                IMSLog.s(LOG_TAG, "cannot parse result" + e2.getMessage());
            }
        } else {
            try {
                t = cls.newInstance();
                cls.getField("mSuccess").setBoolean(t, false);
                cls.getField("mReason").set(t, "Null response");
                cls.getField("mStatusCode").setInt(t, 0);
            } catch (IllegalAccessException | InstantiationException | NoSuchFieldException e3) {
                IMSLog.s(LOG_TAG, "cannot parse result" + e3.getMessage());
            }
        }
        return t;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getErrorString(com.sec.internal.helper.httpclient.HttpResponseParams r4) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.helper.entitlement.softphone.SoftphoneResponseUtils.getErrorString(com.sec.internal.helper.httpclient.HttpResponseParams):java.lang.String");
    }
}
