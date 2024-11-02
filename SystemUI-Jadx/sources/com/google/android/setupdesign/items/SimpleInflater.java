package com.google.android.setupdesign.items;

import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class SimpleInflater {
    public final Resources resources;

    public SimpleInflater(Resources resources) {
        this.resources = resources;
    }

    public final Object createItemFromTag(String str, AttributeSet attributeSet) {
        try {
            return onCreateItem(str, attributeSet);
        } catch (InflateException e) {
            throw e;
        } catch (Exception e2) {
            throw new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str, e2);
        }
    }

    public final Object inflate(XmlPullParser xmlPullParser) {
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
            Object createItemFromTag = createItemFromTag(xmlPullParser.getName(), asAttributeSet);
            rInflate(xmlPullParser, createItemFromTag, asAttributeSet);
            return createItemFromTag;
        }
        throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
    }

    public abstract void onAddChildItem(Object obj, Object obj2);

    public abstract Object onCreateItem(String str, AttributeSet attributeSet);

    public final void rInflate(XmlPullParser xmlPullParser, Object obj, AttributeSet attributeSet) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    Object createItemFromTag = createItemFromTag(xmlPullParser.getName(), attributeSet);
                    onAddChildItem(obj, createItemFromTag);
                    rInflate(xmlPullParser, createItemFromTag, attributeSet);
                }
            } else {
                return;
            }
        }
    }
}
