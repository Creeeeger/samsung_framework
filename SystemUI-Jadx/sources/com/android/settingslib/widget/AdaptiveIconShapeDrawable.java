package com.android.settingslib.widget;

import android.R;
import android.content.res.Resources;
import android.graphics.Path;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.PathShape;
import android.util.AttributeSet;
import android.util.PathParser;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AdaptiveIconShapeDrawable extends ShapeDrawable {
    public AdaptiveIconShapeDrawable() {
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        setShape(new PathShape(new Path(PathParser.createPathFromPathData(resources.getString(R.string.fingerprint_error_lockout))), 100.0f, 100.0f));
    }

    public AdaptiveIconShapeDrawable(Resources resources) {
        setShape(new PathShape(new Path(PathParser.createPathFromPathData(resources.getString(R.string.fingerprint_error_lockout))), 100.0f, 100.0f));
    }
}
