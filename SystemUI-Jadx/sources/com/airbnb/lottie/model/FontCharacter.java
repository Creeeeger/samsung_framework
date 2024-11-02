package com.airbnb.lottie.model;

import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import com.airbnb.lottie.model.content.ShapeGroup;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FontCharacter {
    public final char character;
    public final String fontFamily;
    public final List shapes;
    public final String style;
    public final double width;

    public FontCharacter(List<ShapeGroup> list, char c, double d, double d2, String str, String str2) {
        this.shapes = list;
        this.character = c;
        this.width = d2;
        this.style = str;
        this.fontFamily = str2;
    }

    public final int hashCode() {
        return this.style.hashCode() + AppInfo$$ExternalSyntheticOutline0.m(this.fontFamily, this.character * 31, 31);
    }
}
