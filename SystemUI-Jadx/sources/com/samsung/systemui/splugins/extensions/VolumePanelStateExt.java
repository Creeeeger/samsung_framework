package com.samsung.systemui.splugins.extensions;

import com.samsung.systemui.splugins.volume.VolumePanelRow;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class VolumePanelStateExt {
    public static final VolumePanelStateExt INSTANCE = new VolumePanelStateExt();

    private VolumePanelStateExt() {
    }

    public static final boolean isAODVolumePanel(VolumePanelState volumePanelState) {
        return volumePanelState.isAodVolumePanel();
    }

    public static final boolean isActiveStream(VolumePanelState volumePanelState, int i) {
        if (volumePanelState.getActiveStream() == i) {
            return true;
        }
        return false;
    }

    public static final boolean isDualViewEnabled(VolumePanelState volumePanelState) {
        boolean z;
        if (!volumePanelState.isDualAudio()) {
            return false;
        }
        if (volumePanelState.isMultiSoundBt()) {
            z = isActiveStream(volumePanelState, 21);
        } else if (!isActiveStream(volumePanelState, 3) && !isActiveStream(volumePanelState, 22)) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final VolumePanelRow findRow(VolumePanelState volumePanelState, int i) {
        Object obj;
        boolean z;
        Iterator<T> it = volumePanelState.getVolumeRowList().iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((VolumePanelRow) obj).getStreamType() == i) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        return (VolumePanelRow) obj;
    }

    public final boolean isRowVisible(VolumePanelState volumePanelState, int i) {
        VolumePanelRow findRow = findRow(volumePanelState, i);
        if (findRow != null) {
            return findRow.isVisible();
        }
        return false;
    }

    public static /* synthetic */ void isAODVolumePanel$annotations(VolumePanelState volumePanelState) {
    }

    public static /* synthetic */ void isDualViewEnabled$annotations(VolumePanelState volumePanelState) {
    }
}
