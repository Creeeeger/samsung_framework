package com.android.server.accessibility.autoaction.actiontype;

import android.R;
import android.content.Context;
import android.view.MotionEvent;

/* loaded from: classes.dex */
public abstract class CornerActionType {
    public abstract void performCornerAction(int i);

    public void setMotionEventForDragAction(MotionEvent motionEvent) {
    }

    public static CornerActionType create(String str, Context context, int i) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2126701204:
                if (str.equals("open_close_notifications")) {
                    c = 0;
                    break;
                }
                break;
            case -1961431229:
                if (str.equals("accessibility_button")) {
                    c = 1;
                    break;
                }
                break;
            case -1747947369:
                if (str.equals("talk_to_bixby")) {
                    c = 2;
                    break;
                }
                break;
            case -1428385405:
                if (str.equals("ringtone_volume_up")) {
                    c = 3;
                    break;
                }
                break;
            case -1366541839:
                if (str.equals("screen_rotation")) {
                    c = 4;
                    break;
                }
                break;
            case -417942503:
                if (str.equals("sound_vibrate_mute")) {
                    c = 5;
                    break;
                }
                break;
            case -417036516:
                if (str.equals("screen_off")) {
                    c = 6;
                    break;
                }
                break;
            case -343519030:
                if (str.equals("reduce_brightness")) {
                    c = 7;
                    break;
                }
                break;
            case -43108627:
                if (str.equals("screen_shot")) {
                    c = '\b';
                    break;
                }
                break;
            case 3015911:
                if (str.equals("back")) {
                    c = '\t';
                    break;
                }
                break;
            case 3208415:
                if (str.equals("home")) {
                    c = '\n';
                    break;
                }
                break;
            case 3387192:
                if (str.equals("none")) {
                    c = 11;
                    break;
                }
                break;
            case 339994222:
                if (str.equals("increase_brightness")) {
                    c = '\f';
                    break;
                }
                break;
            case 452226764:
                if (str.equals("media_volume_down")) {
                    c = '\r';
                    break;
                }
                break;
            case 765078569:
                if (str.equals("power_off_menu")) {
                    c = 14;
                    break;
                }
                break;
            case 1060365899:
                if (str.equals("send_sos_messages")) {
                    c = 15;
                    break;
                }
                break;
            case 1082295672:
                if (str.equals("recents")) {
                    c = 16;
                    break;
                }
                break;
            case 1158011717:
                if (str.equals("media_volume_up")) {
                    c = 17;
                    break;
                }
                break;
            case 1710656906:
                if (str.equals("ringtone_volume_down")) {
                    c = 18;
                    break;
                }
                break;
            case 1729070774:
                if (str.equals("open_close_quick_panel")) {
                    c = 19;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return OpenCloseNotifications.createAction(context);
            case 1:
            case '\t':
            case '\n':
            case 16:
                return NavigationBarAction.createAction(context, str, i);
            case 2:
                return TalkToBixby.createAction(context, i);
            case 3:
            case 5:
            case '\r':
            case 17:
            case 18:
                return SoundAction.createAction(context, str);
            case 4:
                return ScreenRotation.createAction(context, i);
            case 6:
                return ScreenOff.createAction(context);
            case 7:
            case '\f':
                return BrightnessAction.createAction(context, str, i);
            case '\b':
                return ScreenShot.createAction(context);
            case 11:
                return null;
            case 14:
                return PowerOffMenu.createAction(context);
            case 15:
                return SendSOSMessages.createAction(context, i);
            case 19:
                return OpenCloseQuickPanel.createAction(context);
            default:
                throw new IllegalArgumentException("Wrong Corner Action Type");
        }
    }

    public static CornerActionType create(String str, Context context, MotionEvent motionEvent) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1681856770:
                if (str.equals("click_and_hold")) {
                    c = 0;
                    break;
                }
                break;
            case -110012143:
                if (str.equals("zoom_in")) {
                    c = 1;
                    break;
                }
                break;
            case -88919616:
                if (str.equals("swipe_up")) {
                    c = 2;
                    break;
                }
                break;
            case 3091764:
                if (str.equals("drag")) {
                    c = 3;
                    break;
                }
                break;
            case 422681346:
                if (str.equals("drag_and_drop")) {
                    c = 4;
                    break;
                }
                break;
            case 447091335:
                if (str.equals("swipe_down")) {
                    c = 5;
                    break;
                }
                break;
            case 447319532:
                if (str.equals("swipe_left")) {
                    c = 6;
                    break;
                }
                break;
            case 884596962:
                if (str.equals("zoom_out")) {
                    c = 7;
                    break;
                }
                break;
            case 987664599:
                if (str.equals("swipe_right")) {
                    c = '\b';
                    break;
                }
                break;
            case 1374143386:
                if (str.equals("double_click")) {
                    c = '\t';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return ClickAndHold.createAction(context, motionEvent);
            case 1:
            case 7:
                return Zoom.createAction(context, motionEvent, str);
            case 2:
            case 5:
            case 6:
            case '\b':
                return Swipe.createAction(context, motionEvent, str);
            case 3:
            case 4:
                return DragAction.createAction(context, motionEvent, str);
            case '\t':
                return DoubleClick.createAction(context, motionEvent);
            default:
                throw new IllegalArgumentException("Wrong Corner Action Type");
        }
    }

    public static int getTitleResId(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2126701204:
                if (str.equals("open_close_notifications")) {
                    c = 0;
                    break;
                }
                break;
            case -1961431229:
                if (str.equals("accessibility_button")) {
                    c = 1;
                    break;
                }
                break;
            case -1747947369:
                if (str.equals("talk_to_bixby")) {
                    c = 2;
                    break;
                }
                break;
            case -1681856770:
                if (str.equals("click_and_hold")) {
                    c = 3;
                    break;
                }
                break;
            case -1428385405:
                if (str.equals("ringtone_volume_up")) {
                    c = 4;
                    break;
                }
                break;
            case -1366541839:
                if (str.equals("screen_rotation")) {
                    c = 5;
                    break;
                }
                break;
            case -417942503:
                if (str.equals("sound_vibrate_mute")) {
                    c = 6;
                    break;
                }
                break;
            case -417036516:
                if (str.equals("screen_off")) {
                    c = 7;
                    break;
                }
                break;
            case -343519030:
                if (str.equals("reduce_brightness")) {
                    c = '\b';
                    break;
                }
                break;
            case -342650039:
                if (str.equals("sound_mute")) {
                    c = '\t';
                    break;
                }
                break;
            case -110012143:
                if (str.equals("zoom_in")) {
                    c = '\n';
                    break;
                }
                break;
            case -88919616:
                if (str.equals("swipe_up")) {
                    c = 11;
                    break;
                }
                break;
            case -43108627:
                if (str.equals("screen_shot")) {
                    c = '\f';
                    break;
                }
                break;
            case 3015911:
                if (str.equals("back")) {
                    c = '\r';
                    break;
                }
                break;
            case 3091764:
                if (str.equals("drag")) {
                    c = 14;
                    break;
                }
                break;
            case 3208415:
                if (str.equals("home")) {
                    c = 15;
                    break;
                }
                break;
            case 339994222:
                if (str.equals("increase_brightness")) {
                    c = 16;
                    break;
                }
                break;
            case 422681346:
                if (str.equals("drag_and_drop")) {
                    c = 17;
                    break;
                }
                break;
            case 447091335:
                if (str.equals("swipe_down")) {
                    c = 18;
                    break;
                }
                break;
            case 447319532:
                if (str.equals("swipe_left")) {
                    c = 19;
                    break;
                }
                break;
            case 452226764:
                if (str.equals("media_volume_down")) {
                    c = 20;
                    break;
                }
                break;
            case 765078569:
                if (str.equals("power_off_menu")) {
                    c = 21;
                    break;
                }
                break;
            case 884596962:
                if (str.equals("zoom_out")) {
                    c = 22;
                    break;
                }
                break;
            case 987664599:
                if (str.equals("swipe_right")) {
                    c = 23;
                    break;
                }
                break;
            case 1060365899:
                if (str.equals("send_sos_messages")) {
                    c = 24;
                    break;
                }
                break;
            case 1082295672:
                if (str.equals("recents")) {
                    c = 25;
                    break;
                }
                break;
            case 1158011717:
                if (str.equals("media_volume_up")) {
                    c = 26;
                    break;
                }
                break;
            case 1374143386:
                if (str.equals("double_click")) {
                    c = 27;
                    break;
                }
                break;
            case 1452697162:
                if (str.equals("resume_auto_click")) {
                    c = 28;
                    break;
                }
                break;
            case 1641726177:
                if (str.equals("pause_auto_click")) {
                    c = 29;
                    break;
                }
                break;
            case 1710656906:
                if (str.equals("ringtone_volume_down")) {
                    c = 30;
                    break;
                }
                break;
            case 1729070774:
                if (str.equals("open_close_quick_panel")) {
                    c = 31;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return OpenCloseNotifications.getStringResId();
            case 1:
            case '\r':
            case 15:
            case 25:
                return NavigationBarAction.getStringResId(str);
            case 2:
                return TalkToBixby.getStringResId();
            case 3:
                return ClickAndHold.getStringResId();
            case 4:
            case 6:
            case 20:
            case 26:
            case 30:
                return SoundAction.getStringResId(str);
            case 5:
                return ScreenRotation.getStringResId();
            case 7:
                return ScreenOff.getStringResId();
            case '\b':
            case 16:
                return BrightnessAction.getStringResId(str);
            case '\t':
                return R.string.app_running_notification_title;
            case '\n':
            case 22:
                return Zoom.getStringResId(str);
            case 11:
            case 18:
            case 19:
            case 23:
                return Swipe.getStringResId(str);
            case '\f':
                return ScreenShot.getStringResId();
            case 14:
            case 17:
                return DragAction.getStringResId(str);
            case 21:
                return PowerOffMenu.getStringResId();
            case 24:
                return SendSOSMessages.getStringResId();
            case 27:
                return DoubleClick.getStringResId();
            case 28:
                return R.string.app_category_news;
            case 29:
                return R.string.app_category_audio;
            case 31:
                return OpenCloseQuickPanel.getStringResId();
            default:
                throw new IllegalArgumentException("Wrong Corner Action Type");
        }
    }
}
