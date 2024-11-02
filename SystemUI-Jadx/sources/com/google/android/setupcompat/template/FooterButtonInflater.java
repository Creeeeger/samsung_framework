package com.google.android.setupcompat.template;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FooterButtonInflater {
    public final Context context;

    public FooterButtonInflater(Context context) {
        this.context = context;
    }

    public final FooterButton inflate(XmlPullParser xmlPullParser) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            try {
                next = xmlPullParser.next();
                if (next == 2) {
                    break;
                }
            } catch (IOException e) {
                throw new InflateException(xmlPullParser.getPositionDescription() + ": " + e.getMessage(), e);
            } catch (XmlPullParserException e2) {
                throw new InflateException(e2.getMessage(), e2);
            }
        } while (next != 1);
        if (next == 2) {
            if (xmlPullParser.getName().equals("FooterButton")) {
                return new FooterButton(this.context, asAttributeSet);
            }
            throw new InflateException(xmlPullParser.getPositionDescription() + ": not a FooterButton");
        }
        throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
    }
}
