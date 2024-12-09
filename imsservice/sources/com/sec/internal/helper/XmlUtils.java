package com.sec.internal.helper;

import android.text.TextUtils;
import android.util.Xml;
import java.io.IOException;
import java.util.StringTokenizer;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public class XmlUtils {
    public static XmlPullParser newPullParser() {
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

    public static void skipCurrentTag(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
        }
    }

    public static final void beginDocument(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (xmlPullParser.getName().equals(str)) {
            return;
        }
        throw new XmlPullParserException("Unexpected start tag: found " + xmlPullParser.getName() + ", expected " + str);
    }

    public static boolean search(XmlPullParser xmlPullParser, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        if (!stringTokenizer.hasMoreTokens()) {
            return false;
        }
        try {
            beginDocument(xmlPullParser, stringTokenizer.nextToken());
            xmlPullParser.nextTag();
            while (stringTokenizer.hasMoreTokens() && searchTag(xmlPullParser, stringTokenizer.nextToken())) {
                if (!stringTokenizer.hasMoreTokens()) {
                    return true;
                }
                xmlPullParser.nextTag();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException unused) {
        }
        return false;
    }

    public static boolean searchTag(XmlPullParser xmlPullParser, String str) {
        while (true) {
            try {
                int eventType = xmlPullParser.getEventType();
                if (eventType == 1) {
                    return false;
                }
                if (eventType == 2) {
                    if (str.equalsIgnoreCase(xmlPullParser.getName())) {
                        return true;
                    }
                    skipCurrentTag(xmlPullParser);
                } else {
                    xmlPullParser.nextTag();
                }
            } catch (IOException e) {
                e.printStackTrace();
                return false;
            } catch (XmlPullParserException unused) {
                return false;
            }
        }
    }
}
