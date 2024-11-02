package com.android.systemui.statusbar;

import android.content.Context;
import android.content.res.Configuration;
import android.util.IndentingPrintWriter;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.logging.PanelScreenShotLogger;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.LargeScreenUtils;
import java.io.PrintWriter;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class AbstractLockscreenShadeTransitionController implements Dumpable, PanelScreenShotLogger.LogProvider {
    public final Context context;
    public float dragDownAmount;
    public boolean useSplitShade;

    public AbstractLockscreenShadeTransitionController(Context context, ConfigurationController configurationController, DumpManager dumpManager) {
        this.context = context;
        this.useSplitShade = LargeScreenUtils.shouldUseSplitNotificationShade(context.getResources());
        updateResources();
        ((ConfigurationControllerImpl) configurationController).addCallback(new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.AbstractLockscreenShadeTransitionController.1
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                AbstractLockscreenShadeTransitionController abstractLockscreenShadeTransitionController = AbstractLockscreenShadeTransitionController.this;
                abstractLockscreenShadeTransitionController.useSplitShade = LargeScreenUtils.shouldUseSplitNotificationShade(abstractLockscreenShadeTransitionController.context.getResources());
                abstractLockscreenShadeTransitionController.updateResources();
            }
        });
        dumpManager.registerDumpable(this);
        PanelScreenShotLogger.INSTANCE.addLogProvider("AbstractLockscreenShadeTransitionController", this);
    }

    public abstract void dump(IndentingPrintWriter indentingPrintWriter);

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        dump(new IndentingPrintWriter(printWriter, "  "));
    }

    @Override // com.android.systemui.logging.PanelScreenShotLogger.LogProvider
    public final ArrayList gatherState() {
        ArrayList arrayList = new ArrayList();
        PanelScreenShotLogger.INSTANCE.getClass();
        PanelScreenShotLogger.addHeaderLine("AbstractLockscreenShadeTransitionController", arrayList);
        PanelScreenShotLogger.addLogItem(arrayList, "dragDownAmount", Float.valueOf(this.dragDownAmount));
        return arrayList;
    }

    public abstract void onDragDownAmountChanged(float f);

    public final void setDragDownAmount(float f) {
        boolean z;
        if (f == this.dragDownAmount) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        this.dragDownAmount = f;
        onDragDownAmountChanged(f);
    }

    public abstract void updateResources();
}
