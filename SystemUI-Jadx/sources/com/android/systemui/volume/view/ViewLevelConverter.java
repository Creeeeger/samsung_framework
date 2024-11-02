package com.android.systemui.volume.view;

import com.samsung.systemui.splugins.volume.VolumePanelRow;
import com.samsung.systemui.splugins.volume.VolumePanelValues;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ViewLevelConverter {
    static {
        new ViewLevelConverter();
    }

    private ViewLevelConverter() {
    }

    public static final int viewMaxLevel(VolumePanelRow volumePanelRow) {
        if (VolumePanelValues.isSmartView(volumePanelRow.getStreamType())) {
            return volumePanelRow.getLevelMax();
        }
        return volumePanelRow.getLevelMax() * 100;
    }

    public static final int viewMinLevel(VolumePanelRow volumePanelRow) {
        if (VolumePanelValues.isSmartView(volumePanelRow.getStreamType())) {
            return volumePanelRow.getLevelMin();
        }
        return volumePanelRow.getLevelMin() * 100;
    }

    public static final int viewRealLevel(VolumePanelRow volumePanelRow) {
        if (!VolumePanelValues.isMediaStream(volumePanelRow.getStreamType()) && !VolumePanelValues.isSmartView(volumePanelRow.getStreamType())) {
            return volumePanelRow.getRealLevel() * 100;
        }
        return volumePanelRow.getRealLevel();
    }
}
