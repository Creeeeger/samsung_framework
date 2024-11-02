package androidx.picker.model;

import android.graphics.drawable.Drawable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface AppInfoData extends AppData {
    Drawable getActionIcon();

    boolean getDimmed();

    String getExtraLabel();

    Drawable getIcon();

    int getItemType();

    String getLabel();

    boolean getSelected();

    Drawable getSubIcon();

    String getSubLabel();

    boolean isValueInSubLabel();

    void setDimmed(boolean z);

    void setIcon(Drawable drawable);

    void setLabel(String str);

    void setSelected(boolean z);
}
