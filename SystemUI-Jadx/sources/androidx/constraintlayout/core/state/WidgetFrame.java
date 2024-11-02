package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WidgetFrame {
    public final HashMap mCustom;

    public WidgetFrame() {
        this.mCustom = new HashMap();
    }

    public WidgetFrame(ConstraintWidget constraintWidget) {
        this.mCustom = new HashMap();
    }

    public WidgetFrame(WidgetFrame widgetFrame) {
        HashMap hashMap = new HashMap();
        this.mCustom = hashMap;
        widgetFrame.getClass();
        hashMap.clear();
        for (CustomVariable customVariable : widgetFrame.mCustom.values()) {
            hashMap.put(customVariable.mName, new CustomVariable(customVariable));
        }
    }
}
