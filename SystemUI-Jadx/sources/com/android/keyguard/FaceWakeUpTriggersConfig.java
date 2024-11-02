package com.android.keyguard;

import android.content.res.Resources;
import android.os.Build;
import android.os.PowerManager;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.util.settings.GlobalSettings;
import com.android.systemui.util.settings.GlobalSettingsImpl;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FaceWakeUpTriggersConfig implements Dumpable {
    public final Set triggerFaceAuthOnWakeUpFrom;

    public FaceWakeUpTriggersConfig(Resources resources, GlobalSettings globalSettings, DumpManager dumpManager) {
        Set set;
        Set set2 = ArraysKt___ArraysKt.toSet(resources.getIntArray(R.array.config_face_auth_wake_up_triggers));
        if (Build.IS_DEBUGGABLE) {
            String stringForUser = ((GlobalSettingsImpl) globalSettings).getStringForUser(globalSettings.getUserId(), "face_wake_triggers");
            if (stringForUser != null) {
                set = (Set) StringsKt__StringsKt.split$default(stringForUser, new String[]{"|"}, 0, 6).stream().map(new Function() { // from class: com.android.keyguard.FaceWakeUpTriggersConfig$processStringArray$1$1
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Integer.valueOf(Integer.parseInt((String) obj));
                    }
                }).collect(Collectors.toSet());
            } else {
                set = null;
            }
            if (set != null) {
                set2 = set;
            }
        }
        this.triggerFaceAuthOnWakeUpFrom = set2;
        dumpManager.registerDumpable(this);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("FaceWakeUpTriggers:");
        Iterator it = this.triggerFaceAuthOnWakeUpFrom.iterator();
        while (it.hasNext()) {
            FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("    ", PowerManager.wakeReasonToString(((Number) it.next()).intValue()), printWriter);
        }
    }
}
