package com.android.systemui.power.sound;

import android.app.ActivityManager;
import android.content.Context;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.PowerUiRune;
import com.android.systemui.keyguard.CustomizationProvider$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SoundPathFinder {
    public static boolean checkDefaultCondition(String str) {
        if (str != null && !TextUtils.isEmpty(str) && !"Galaxy".equals(str)) {
            return false;
        }
        return true;
    }

    public static String getChargerConnectionPath(Context context, boolean z) {
        int currentUser = ActivityManager.getCurrentUser();
        String stringForUser = Settings.System.getStringForUser(context.getContentResolver(), "system_sound", currentUser);
        String stringForUser2 = Settings.System.getStringForUser(context.getContentResolver(), "prev_system_sound", currentUser);
        String str = "ChargingStarted";
        if (checkDefaultCondition(stringForUser)) {
            if (z) {
                str = "ChargingStarted_Fast";
            }
            String m = PathParser$$ExternalSyntheticOutline0.m("system/media/audio/ui/", str, ".ogg");
            CustomizationProvider$$ExternalSyntheticOutline0.m("system sound theme name is : ", stringForUser, " so it will be : ", m, "PowerUI-SoundPathFinder");
            return m;
        }
        if ("Open_theme".equals(stringForUser)) {
            Log.d("PowerUI-SoundPathFinder", "prevSound : " + stringForUser2 + ", in userID : " + currentUser);
            if (checkDefaultCondition(stringForUser2)) {
                if (z) {
                    str = "ChargingStarted_Fast";
                }
                String m2 = PathParser$$ExternalSyntheticOutline0.m("system/media/audio/ui/", str, ".ogg");
                ExifInterface$$ExternalSyntheticOutline0.m(KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("system sound theme name is : ", stringForUser, " but prevSound is ", stringForUser2, ", so it will be : "), m2, "PowerUI-SoundPathFinder");
                return m2;
            }
            if (z) {
                str = "ChargingStarted_Fast";
            }
            String systemSoundPath = getSystemSoundPath(str, stringForUser2);
            CustomizationProvider$$ExternalSyntheticOutline0.m("system sound theme name is : ", stringForUser, " so we should play prev sound, so it will be : ", systemSoundPath, "PowerUI-SoundPathFinder");
            return systemSoundPath;
        }
        if (z) {
            str = "ChargingStarted_Fast";
        }
        String systemSoundPath2 = getSystemSoundPath(str, stringForUser);
        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("sound theme name is applied so it will be : ", systemSoundPath2, "PowerUI-SoundPathFinder");
        return systemSoundPath2;
    }

    public static String getSoundPath(int i, Context context) {
        switch (i) {
            case 1:
                return getChargerConnectionPath(context, false);
            case 2:
                return getChargerConnectionPath(context, true);
            case 3:
                String string = Settings.System.getString(context.getContentResolver(), "low_battery_sound");
                if (PowerUiRune.LOW_BATTTERY_SOUND_THEME) {
                    int currentUser = ActivityManager.getCurrentUser();
                    String stringForUser = Settings.System.getStringForUser(context.getContentResolver(), "system_sound", currentUser);
                    String stringForUser2 = Settings.System.getStringForUser(context.getContentResolver(), "prev_system_sound", currentUser);
                    if (checkDefaultCondition(stringForUser)) {
                        CustomizationProvider$$ExternalSyntheticOutline0.m("system sound theme name is : ", stringForUser, " so it will be : ", string, "PowerUI-SoundPathFinder");
                        return string;
                    }
                    if ("Open_theme".equals(stringForUser)) {
                        Log.d("PowerUI-SoundPathFinder", "prevSound : " + stringForUser2 + ", in userID : " + currentUser);
                        if (checkDefaultCondition(stringForUser2)) {
                            ExifInterface$$ExternalSyntheticOutline0.m(KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("system sound theme name is : ", stringForUser, " but prevSound is ", stringForUser2, ", so it will be : "), string, "PowerUI-SoundPathFinder");
                            return string;
                        }
                        String systemSoundPath = getSystemSoundPath("LowBattery", stringForUser2);
                        CustomizationProvider$$ExternalSyntheticOutline0.m("system sound theme name is : ", stringForUser, " so we should play prev sound, so it will be : ", systemSoundPath, "PowerUI-SoundPathFinder");
                        return systemSoundPath;
                    }
                    String systemSoundPath2 = getSystemSoundPath("LowBattery", stringForUser);
                    MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("sound theme name is applied so it will be : ", systemSoundPath2, "PowerUI-SoundPathFinder");
                    return systemSoundPath2;
                }
                return string;
            case 4:
                return "system/media/audio/ui/TW_Battery_caution.ogg";
            case 5:
            case 6:
            case 7:
                return "system/media/audio/ui/Water_Protection.ogg";
            default:
                return "";
        }
    }

    public static String getSystemSoundPath(String str, String str2) {
        return MotionLayout$$ExternalSyntheticOutline0.m("system/media/audio/ui/", str, "_", str2, ".ogg");
    }
}
