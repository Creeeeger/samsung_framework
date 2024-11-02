package com.android.systemui.statusbar.phone;

import android.view.InsetsFlags;
import android.view.ViewDebug;
import com.android.internal.statusbar.LetterboxDetails;
import com.android.internal.view.AppearanceRegion;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import java.io.PrintWriter;
import java.util.Arrays;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LetterboxAppearanceCalculator implements Dumpable {
    public Integer lastAppearance;
    public AppearanceRegion[] lastAppearanceRegions;
    public LetterboxAppearance lastLetterboxAppearance;
    public LetterboxDetails[] lastLetterboxes;
    public final LetterboxBackgroundProvider letterboxBackgroundProvider;
    public final LightBarController lightBarController;
    public StatusBarBoundsProvider statusBarBoundsProvider;

    public LetterboxAppearanceCalculator(LightBarController lightBarController, DumpManager dumpManager, LetterboxBackgroundProvider letterboxBackgroundProvider) {
        this.lightBarController = lightBarController;
        this.letterboxBackgroundProvider = letterboxBackgroundProvider;
        dumpManager.getClass();
        dumpManager.registerCriticalDumpable("LetterboxAppearanceCalculator", this);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        String str;
        Integer num = this.lastAppearance;
        if (num != null) {
            str = ViewDebug.flagsToString(InsetsFlags.class, "appearance", num.intValue());
        } else {
            str = null;
        }
        String arrays = Arrays.toString(this.lastAppearanceRegions);
        String arrays2 = Arrays.toString(this.lastLetterboxes);
        LetterboxAppearance letterboxAppearance = this.lastLetterboxAppearance;
        StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("\n           lastAppearance: ", str, "\n           lastAppearanceRegion: ", arrays, ",\n           lastLetterboxes: ");
        m.append(arrays2);
        m.append(",\n           lastLetterboxAppearance: ");
        m.append(letterboxAppearance);
        m.append("\n       ");
        printWriter.println(StringsKt__IndentKt.trimIndent(m.toString()));
    }
}
