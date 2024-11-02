package com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol;

import androidx.lifecycle.MutableLiveData;
import com.android.systemui.qs.bar.soundcraft.interfaces.connectivity.BluetoothDeviceManager;
import com.android.systemui.qs.bar.soundcraft.model.ModelProvider;
import com.android.systemui.qs.bar.soundcraft.model.NoiseControl;
import com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseToggleViewModel;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class NoiseControlIconViewModel extends BaseToggleViewModel {
    public final MutableLiveData background = new MutableLiveData();
    public final MutableLiveData iconColor = new MutableLiveData();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public BluetoothDeviceManager getBluetoothDeviceManager() {
        return null;
    }

    public abstract int getDrawableOff();

    public abstract int getDrawableOn();

    public abstract String getItemName();

    public ModelProvider getModelProvider() {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
    
        if (kotlin.text.StringsKt__StringsKt.contains(r3, r2.getName(), true) == true) goto L13;
     */
    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void notifyChange() {
        /*
            r7 = this;
            androidx.lifecycle.MutableLiveData r0 = r7.name
            java.lang.String r1 = r7.getItemName()
            r0.setValue(r1)
            com.android.systemui.qs.bar.soundcraft.model.ModelProvider r1 = r7.getModelProvider()
            com.android.systemui.qs.bar.soundcraft.model.BudsInfo r1 = r1.budsInfo
            java.util.Set r1 = r1.getNoiseControlsList()
            if (r1 == 0) goto L95
            java.util.Iterator r1 = r1.iterator()
        L19:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L95
            java.lang.Object r2 = r1.next()
            com.android.systemui.qs.bar.soundcraft.model.NoiseControl r2 = (com.android.systemui.qs.bar.soundcraft.model.NoiseControl) r2
            java.lang.Object r3 = r0.getValue()
            java.lang.String r3 = (java.lang.String) r3
            if (r3 == 0) goto L39
            java.lang.String r4 = r2.getName()
            r5 = 1
            boolean r3 = kotlin.text.StringsKt__StringsKt.contains(r3, r4, r5)
            if (r3 != r5) goto L39
            goto L3a
        L39:
            r5 = 0
        L3a:
            if (r5 == 0) goto L19
            boolean r3 = r2.getState()
            androidx.lifecycle.MutableLiveData r4 = r7.background
            androidx.lifecycle.MutableLiveData r5 = r7.iconColor
            androidx.lifecycle.MutableLiveData r6 = r7.icon
            if (r3 == 0) goto L68
            int r3 = r7.getDrawableOn()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r6.setValue(r3)
            r3 = 2131101701(0x7f060805, float:1.781582E38)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r5.setValue(r3)
            r3 = 2131235072(0x7f081100, float:1.8086328E38)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r4.setValue(r3)
            goto L87
        L68:
            int r3 = r7.getDrawableOff()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r6.setValue(r3)
            r3 = 2131101703(0x7f060807, float:1.7815823E38)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r5.setValue(r3)
            r3 = 2131235073(0x7f081101, float:1.808633E38)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r4.setValue(r3)
        L87:
            androidx.lifecycle.MutableLiveData r3 = r7.isSelected
            boolean r2 = r2.getState()
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            r3.setValue(r2)
            goto L19
        L95:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseControlIconViewModel.notifyChange():void");
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseToggleViewModel
    public final void onClick() {
        boolean z;
        Set<NoiseControl> noiseControlsList = getModelProvider().budsInfo.getNoiseControlsList();
        if (noiseControlsList != null) {
            for (NoiseControl noiseControl : noiseControlsList) {
                String str = (String) this.name.getValue();
                if (str != null && StringsKt__StringsKt.contains(str, noiseControl.getName(), true)) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    if (!noiseControl.getState()) {
                        getBluetoothDeviceManager().updateNoiseControlList(new NoiseControl(noiseControl.getName(), true));
                        return;
                    }
                    return;
                }
            }
        }
    }
}
