package com.android.systemui.edgelighting.utils;

import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.util.Size;
import android.view.Display;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import androidx.appcompat.widget.SeslSeekBar;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.view.SemWindowManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Utils {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        Uri.parse("content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings");
    }

    public static String getColorName(int i) {
        if (i != 0) {
            if (i != 99) {
                switch (i) {
                    case 3:
                        return "blue";
                    case 4:
                        return "pink";
                    case 5:
                        return "red";
                    case 6:
                        return "orange";
                    case 7:
                        return "light green";
                    case 8:
                        return "green";
                    case 9:
                        return "turquoise";
                    case 10:
                        return "skyblue";
                    case 11:
                        return "deep blue";
                    case 12:
                        return "indie pink";
                    case 13:
                        return "purple";
                    default:
                        return "";
                }
            }
            return "custom";
        }
        return "app color";
    }

    public static String getEffectEnglishName(String str) {
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1685878578:
                if (str.equals("preload/spotlight")) {
                    c = 0;
                    break;
                }
                break;
            case -1030122874:
                if (str.equals("preload/fireworks")) {
                    c = 1;
                    break;
                }
                break;
            case -677405114:
                if (str.equals("preload/noframe")) {
                    c = 2;
                    break;
                }
                break;
            case -413265855:
                if (str.equals("preload/eclipse")) {
                    c = 3;
                    break;
                }
                break;
            case -221447342:
                if (str.equals("preload/bubble")) {
                    c = 4;
                    break;
                }
                break;
            case 659972081:
                if (str.equals("preload/reflection")) {
                    c = 5;
                    break;
                }
                break;
            case 962108584:
                if (str.equals("preload/basic")) {
                    c = 6;
                    break;
                }
                break;
            case 967751872:
                if (str.equals("preload/heart")) {
                    c = 7;
                    break;
                }
                break;
            case 1555147371:
                if (str.equals("preload/echo")) {
                    c = '\b';
                    break;
                }
                break;
            case 1555215827:
                if (str.equals("preload/glow")) {
                    c = '\t';
                    break;
                }
                break;
            case 1555682111:
                if (str.equals("preload/wave")) {
                    c = '\n';
                    break;
                }
                break;
            case 2006314209:
                if (str.equals("preload/gradation")) {
                    c = 11;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return "spotlight";
            case 1:
                return "fireworks";
            case 2:
                return "none";
            case 3:
                return "elicpse";
            case 4:
                return "bubble";
            case 5:
                return "glitter";
            case 6:
                return "basic";
            case 7:
                return "heart";
            case '\b':
                return "echo";
            case '\t':
                return "glow";
            case '\n':
                return "wave";
            case 11:
                return "multicolor";
            default:
                return "";
        }
    }

    public static Size getScreenSize(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService(WindowManager.class)).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        return new Size(point.x, point.y);
    }

    public static boolean isLargeCoverFlipFolded() {
        SemWindowManager semWindowManager;
        String string = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY");
        if (!string.contains("COVER") || !string.contains("LARGESCREEN") || (semWindowManager = SemWindowManager.getInstance()) == null) {
            return false;
        }
        return semWindowManager.isFolded();
    }

    public static void setSeekBarContentDescription(Context context, SeslSeekBar seslSeekBar, CharSequence charSequence) {
        boolean z;
        TalkBackUtil talkBackUtil = TalkBackUtil.getInstance(context);
        AccessibilityManager accessibilityManager = talkBackUtil.mAccessibilityManager;
        boolean z2 = true;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            z = true;
        } else {
            z = false;
        }
        if (!z || !talkBackUtil.mIsTalkbackMode) {
            z2 = false;
        }
        if (z2) {
            seslSeekBar.setContentDescription(charSequence);
        } else {
            seslSeekBar.setContentDescription(Integer.toString(seslSeekBar.getProgress()));
        }
    }
}
