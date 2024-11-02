package com.android.settingslib.bluetooth;

import android.R;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.SemBluetoothUuid;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelUuid;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.ContextThemeWrapper;
import android.widget.Toast;
import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.samsung.android.bluetooth.SemBluetoothAudioCast;
import com.samsung.android.bluetooth.SemBluetoothCastAdapter;
import com.samsung.android.knox.ex.peripheral.PeripheralBarcodeConstants;
import com.samsung.android.knox.zt.devicetrust.cert.CertProvisionProfile;
import com.samsung.android.settingslib.bluetooth.ManufacturerData;
import com.samsung.android.settingslib.bluetooth.bluetoothcast.AudioCastProfile;
import com.sec.ims.configuration.DATA;
import com.sec.ims.im.ImIntent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.stream.Collectors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BluetoothUtils {
    public static boolean mDexQuickPannelOn;
    public static boolean mQuickPannelOn;
    public static final boolean DEBUG = Debug.semIsProductDev();
    public static final String[] BD_ROTATE_LEFT = {"00", "02", "04", "06", "08", "0A", "0C", "0E", DATA.DM_FIELD_INDEX.SMS_OVER_IMS, DATA.DM_FIELD_INDEX.SIP_T1_TIMER, DATA.DM_FIELD_INDEX.SIP_T4_TIMER, DATA.DM_FIELD_INDEX.SIP_TB_TIMER, DATA.DM_FIELD_INDEX.SIP_TD_TIMER, "1A", "1C", "1E", DATA.DM_FIELD_INDEX.SIP_TF_TIMER, DATA.DM_FIELD_INDEX.SIP_TH_TIMER, DATA.DM_FIELD_INDEX.SIP_TJ_TIMER, DATA.DM_FIELD_INDEX.CAP_CACHE_EXP, DATA.DM_FIELD_INDEX.SRC_THROTTLE_PUBLISH, "2A", "2C", "2E", DATA.DM_FIELD_INDEX.LVC_BETA_SETTING, DATA.DM_FIELD_INDEX.AVAIL_CACHE_EXP, DATA.DM_FIELD_INDEX.FQDN_FOR_PCSCF, DATA.DM_FIELD_INDEX.PUBLISH_TIMER, DATA.DM_FIELD_INDEX.GZIP_FLAG, "3A", "3C", "3E", DATA.DM_FIELD_INDEX.T_DELAY, DATA.DM_FIELD_INDEX.MIN_SE, DATA.DM_FIELD_INDEX.SILENT_REDIAL_ENABLE, DATA.DM_FIELD_INDEX.PUBLISH_ERR_RETRY_TIMER, DATA.DM_FIELD_INDEX.RINGING_TIMER, "4A", "4C", "4E", DATA.DM_FIELD_INDEX.RTP_RTCP_TIMER, DATA.DM_FIELD_INDEX.URI_MEDIA_RSC_SERV_3WAY_CALL, DATA.DM_FIELD_INDEX.CAP_DISCOVERY, DATA.DM_FIELD_INDEX.SRC_AMR, DATA.DM_FIELD_INDEX.HD_VOICE, "5A", "5C", "5E", DATA.DM_FIELD_INDEX.AUDIO_RTP_PORT_START, DATA.DM_FIELD_INDEX.VIDEO_RTP_PORT_START, DATA.DM_FIELD_INDEX.AMR_WB_OCTET_ALIGNED, DATA.DM_FIELD_INDEX.AMR_OCTET_ALIGNED, DATA.DM_FIELD_INDEX.H264_VGA, "6A", "6C", "6E", DATA.DM_FIELD_INDEX.DTMF_WB, DATA.DM_FIELD_INDEX.VOLTE_PREF_SERVICE_STATUS, DATA.DM_FIELD_INDEX.DM_APP_ID, DATA.DM_FIELD_INDEX.DM_CON_REF, DATA.DM_FIELD_INDEX.ICSI, "7A", "7C", "7E", DATA.DM_FIELD_INDEX.RSC_ALLOC_MODE, DATA.DM_FIELD_INDEX.VOICE_DOMAIN_PREF_UTRAN, DATA.DM_FIELD_INDEX.REG_RETRY_BASE_TIME, DATA.DM_FIELD_INDEX.PHONE_CONTEXT_PARAM, DATA.DM_FIELD_INDEX.SS_DOMAIN_SETTING, "8A", "8C", "8E", DATA.DM_FIELD_INDEX.DM_POLLING_PERIOD, DATA.DM_FIELD_INDEX.CONF_FACTORY_URI, DATA.DM_FIELD_INDEX.LVC_ENABLED, DATA.DM_FIELD_INDEX.VOLTE_ENABLED_BY_USER, DATA.DM_FIELD_INDEX.USSD_CONTROL_PREF, "9A", "9C", "9E", "A0", "A2", "A4", "A6", "A8", "AA", "AC", "AE", "B0", "B2", "B4", "B6", "B8", "BA", "BC", "BE", "C0", "C2", "C4", "C6", "C8", "CA", "CC", "CE", "D0", "D2", "D4", "D6", "D8", "DA", "DC", "DE", "E0", "E2", "E4", "E6", "E8", "EA", CertProvisionProfile.KEY_TYPE_EC, "EE", "F0", "F2", "F4", "F6", "F8", "FA", "FC", "FE", "01", "03", "05", "07", "09", "0B", "0D", "0F", DATA.DM_FIELD_INDEX.SMS_WRITE_UICC, DATA.DM_FIELD_INDEX.SIP_T2_TIMER, DATA.DM_FIELD_INDEX.SIP_TA_TIMER, DATA.DM_FIELD_INDEX.SIP_TC_TIMER, DATA.DM_FIELD_INDEX.SIP_TE_TIMER, "1B", PeripheralBarcodeConstants.Symbology.Type.TYPE_1D, "1F", DATA.DM_FIELD_INDEX.SIP_TG_TIMER, DATA.DM_FIELD_INDEX.SIP_TI_TIMER, DATA.DM_FIELD_INDEX.SIP_TK_TIMER, DATA.DM_FIELD_INDEX.CAP_POLL_INTERVAL, DATA.DM_FIELD_INDEX.SUBSCRIBE_MAX_ENTRY, "2B", PeripheralBarcodeConstants.Symbology.Type.TYPE_2D, "2F", DATA.DM_FIELD_INDEX.EAB_SETTING, DATA.DM_FIELD_INDEX.PREF_CSCF_PORT, DATA.DM_FIELD_INDEX.POLL_LIST_SUB_EXP, DATA.DM_FIELD_INDEX.PUBLISH_TIMER_EXTEND, DATA.DM_FIELD_INDEX.TIMER_VZW, "3B", "3D", "3F", DATA.DM_FIELD_INDEX.IMS_TEST_MODE, DATA.DM_FIELD_INDEX.DCN_NUMBER, DATA.DM_FIELD_INDEX.T_LTE_911_FAIL, DATA.DM_FIELD_INDEX.SPEAKER_DEFAULT_VIDEO, DATA.DM_FIELD_INDEX.RINGBACK_TIMER, "4B", "4D", "4F", DATA.DM_FIELD_INDEX.DOMAIN_PUI, "53", DATA.DM_FIELD_INDEX.AMR_WB, DATA.DM_FIELD_INDEX.SRC_AMR_WB, DATA.DM_FIELD_INDEX.UDP_KEEP_ALIVE, "5B", "5D", "5F", DATA.DM_FIELD_INDEX.AUDIO_RTP_PORT_END, DATA.DM_FIELD_INDEX.VIDEO_RTP_PORT_END, DATA.DM_FIELD_INDEX.AMR_WB_BANDWITH_EFFICIENT, DATA.DM_FIELD_INDEX.AMR_BANDWITH_EFFICIENT, DATA.DM_FIELD_INDEX.H264_QVGA, "6B", "6D", "6F", DATA.DM_FIELD_INDEX.DTMF_NB, DATA.DM_FIELD_INDEX.SMS_PSI, DATA.DM_FIELD_INDEX.DM_USER_DISP_NAME, DATA.DM_FIELD_INDEX.PDP_CONTEXT_PREF, DATA.DM_FIELD_INDEX.ICSI_RSC_ALLOC_MODE, "7B", "7D", "7F", DATA.DM_FIELD_INDEX.VOICE_DOMAIN_PREF_EUTRAN, DATA.DM_FIELD_INDEX.IMS_VOICE_TERMINATION, DATA.DM_FIELD_INDEX.REG_RETRY_MAX_TIME, DATA.DM_FIELD_INDEX.PHONE_CONTEXT_PUID, DATA.DM_FIELD_INDEX.SS_CONTROL_PREF, "8B", "8D", "8F", DATA.DM_FIELD_INDEX.ICCID, DATA.DM_FIELD_INDEX.VOLTE_ENABLED, DATA.DM_FIELD_INDEX.EAB_SETTING_BY_USER, DATA.DM_FIELD_INDEX.LVC_ENABLED_BY_USER, DATA.DM_FIELD_INDEX.EMERGENCY_CONTROL_PREF, "9B", "9D", "9F", "A1", "A3", "A5", "A7", "A9", "AB", "AD", "AF", "B1", "B3", "B5", "B7", "B9", "BB", "BD", "BF", "C1", "C3", "C5", "C7", "C9", "CB", "CD", "CF", "D1", "D3", "D5", "D7", "D9", "DB", "DD", "DF", "E1", "E3", "E5", "E7", "E9", "EB", "ED", "EF", "F1", "F3", "F5", "F7", "F9", "FB", "FD", "FF"};
    public static final String[] BD_ROTATE_RIGHT = {"00", DATA.DM_FIELD_INDEX.RSC_ALLOC_MODE, "01", DATA.DM_FIELD_INDEX.VOICE_DOMAIN_PREF_EUTRAN, "02", DATA.DM_FIELD_INDEX.VOICE_DOMAIN_PREF_UTRAN, "03", DATA.DM_FIELD_INDEX.IMS_VOICE_TERMINATION, "04", DATA.DM_FIELD_INDEX.REG_RETRY_BASE_TIME, "05", DATA.DM_FIELD_INDEX.REG_RETRY_MAX_TIME, "06", DATA.DM_FIELD_INDEX.PHONE_CONTEXT_PARAM, "07", DATA.DM_FIELD_INDEX.PHONE_CONTEXT_PUID, "08", DATA.DM_FIELD_INDEX.SS_DOMAIN_SETTING, "09", DATA.DM_FIELD_INDEX.SS_CONTROL_PREF, "0A", "8A", "0B", "8B", "0C", "8C", "0D", "8D", "0E", "8E", "0F", "8F", DATA.DM_FIELD_INDEX.SMS_OVER_IMS, DATA.DM_FIELD_INDEX.DM_POLLING_PERIOD, DATA.DM_FIELD_INDEX.SMS_WRITE_UICC, DATA.DM_FIELD_INDEX.ICCID, DATA.DM_FIELD_INDEX.SIP_T1_TIMER, DATA.DM_FIELD_INDEX.CONF_FACTORY_URI, DATA.DM_FIELD_INDEX.SIP_T2_TIMER, DATA.DM_FIELD_INDEX.VOLTE_ENABLED, DATA.DM_FIELD_INDEX.SIP_T4_TIMER, DATA.DM_FIELD_INDEX.LVC_ENABLED, DATA.DM_FIELD_INDEX.SIP_TA_TIMER, DATA.DM_FIELD_INDEX.EAB_SETTING_BY_USER, DATA.DM_FIELD_INDEX.SIP_TB_TIMER, DATA.DM_FIELD_INDEX.VOLTE_ENABLED_BY_USER, DATA.DM_FIELD_INDEX.SIP_TC_TIMER, DATA.DM_FIELD_INDEX.LVC_ENABLED_BY_USER, DATA.DM_FIELD_INDEX.SIP_TD_TIMER, DATA.DM_FIELD_INDEX.USSD_CONTROL_PREF, DATA.DM_FIELD_INDEX.SIP_TE_TIMER, DATA.DM_FIELD_INDEX.EMERGENCY_CONTROL_PREF, "1A", "9A", "1B", "9B", "1C", "9C", PeripheralBarcodeConstants.Symbology.Type.TYPE_1D, "9D", "1E", "9E", "1F", "9F", DATA.DM_FIELD_INDEX.SIP_TF_TIMER, "A0", DATA.DM_FIELD_INDEX.SIP_TG_TIMER, "A1", DATA.DM_FIELD_INDEX.SIP_TH_TIMER, "A2", DATA.DM_FIELD_INDEX.SIP_TI_TIMER, "A3", DATA.DM_FIELD_INDEX.SIP_TJ_TIMER, "A4", DATA.DM_FIELD_INDEX.SIP_TK_TIMER, "A5", DATA.DM_FIELD_INDEX.CAP_CACHE_EXP, "A6", DATA.DM_FIELD_INDEX.CAP_POLL_INTERVAL, "A7", DATA.DM_FIELD_INDEX.SRC_THROTTLE_PUBLISH, "A8", DATA.DM_FIELD_INDEX.SUBSCRIBE_MAX_ENTRY, "A9", "2A", "AA", "2B", "AB", "2C", "AC", PeripheralBarcodeConstants.Symbology.Type.TYPE_2D, "AD", "2E", "AE", "2F", "AF", DATA.DM_FIELD_INDEX.LVC_BETA_SETTING, "B0", DATA.DM_FIELD_INDEX.EAB_SETTING, "B1", DATA.DM_FIELD_INDEX.AVAIL_CACHE_EXP, "B2", DATA.DM_FIELD_INDEX.PREF_CSCF_PORT, "B3", DATA.DM_FIELD_INDEX.FQDN_FOR_PCSCF, "B4", DATA.DM_FIELD_INDEX.POLL_LIST_SUB_EXP, "B5", DATA.DM_FIELD_INDEX.PUBLISH_TIMER, "B6", DATA.DM_FIELD_INDEX.PUBLISH_TIMER_EXTEND, "B7", DATA.DM_FIELD_INDEX.GZIP_FLAG, "B8", DATA.DM_FIELD_INDEX.TIMER_VZW, "B9", "3A", "BA", "3B", "BB", "3C", "BC", "3D", "BD", "3E", "BE", "3F", "BF", DATA.DM_FIELD_INDEX.T_DELAY, "C0", DATA.DM_FIELD_INDEX.IMS_TEST_MODE, "C1", DATA.DM_FIELD_INDEX.MIN_SE, "C2", DATA.DM_FIELD_INDEX.DCN_NUMBER, "C3", DATA.DM_FIELD_INDEX.SILENT_REDIAL_ENABLE, "C4", DATA.DM_FIELD_INDEX.T_LTE_911_FAIL, "C5", DATA.DM_FIELD_INDEX.PUBLISH_ERR_RETRY_TIMER, "C6", DATA.DM_FIELD_INDEX.SPEAKER_DEFAULT_VIDEO, "C7", DATA.DM_FIELD_INDEX.RINGING_TIMER, "C8", DATA.DM_FIELD_INDEX.RINGBACK_TIMER, "C9", "4A", "CA", "4B", "CB", "4C", "CC", "4D", "CD", "4E", "CE", "4F", "CF", DATA.DM_FIELD_INDEX.RTP_RTCP_TIMER, "D0", DATA.DM_FIELD_INDEX.DOMAIN_PUI, "D1", DATA.DM_FIELD_INDEX.URI_MEDIA_RSC_SERV_3WAY_CALL, "D2", "53", "D3", DATA.DM_FIELD_INDEX.CAP_DISCOVERY, "D4", DATA.DM_FIELD_INDEX.AMR_WB, "D5", DATA.DM_FIELD_INDEX.SRC_AMR, "D6", DATA.DM_FIELD_INDEX.SRC_AMR_WB, "D7", DATA.DM_FIELD_INDEX.HD_VOICE, "D8", DATA.DM_FIELD_INDEX.UDP_KEEP_ALIVE, "D9", "5A", "DA", "5B", "DB", "5C", "DC", "5D", "DD", "5E", "DE", "5F", "DF", DATA.DM_FIELD_INDEX.AUDIO_RTP_PORT_START, "E0", DATA.DM_FIELD_INDEX.AUDIO_RTP_PORT_END, "E1", DATA.DM_FIELD_INDEX.VIDEO_RTP_PORT_START, "E2", DATA.DM_FIELD_INDEX.VIDEO_RTP_PORT_END, "E3", DATA.DM_FIELD_INDEX.AMR_WB_OCTET_ALIGNED, "E4", DATA.DM_FIELD_INDEX.AMR_WB_BANDWITH_EFFICIENT, "E5", DATA.DM_FIELD_INDEX.AMR_OCTET_ALIGNED, "E6", DATA.DM_FIELD_INDEX.AMR_BANDWITH_EFFICIENT, "E7", DATA.DM_FIELD_INDEX.H264_VGA, "E8", DATA.DM_FIELD_INDEX.H264_QVGA, "E9", "6A", "EA", "6B", "EB", "6C", CertProvisionProfile.KEY_TYPE_EC, "6D", "ED", "6E", "EE", "6F", "EF", DATA.DM_FIELD_INDEX.DTMF_WB, "F0", DATA.DM_FIELD_INDEX.DTMF_NB, "F1", DATA.DM_FIELD_INDEX.VOLTE_PREF_SERVICE_STATUS, "F2", DATA.DM_FIELD_INDEX.SMS_PSI, "F3", DATA.DM_FIELD_INDEX.DM_APP_ID, "F4", DATA.DM_FIELD_INDEX.DM_USER_DISP_NAME, "F5", DATA.DM_FIELD_INDEX.DM_CON_REF, "F6", DATA.DM_FIELD_INDEX.PDP_CONTEXT_PREF, "F7", DATA.DM_FIELD_INDEX.ICSI, "F8", DATA.DM_FIELD_INDEX.ICSI_RSC_ALLOC_MODE, "F9", "7A", "FA", "7B", "FB", "7C", "FC", "7D", "FD", "7E", "FE", "7F", "FF"};
    public static final AnonymousClass2 mOnInitCallback = new Object() { // from class: com.android.settingslib.bluetooth.BluetoothUtils.2
    };

    public static boolean compareSameWithGear(int i, String str, String str2, String str3) {
        byte[] bArr = new byte[6];
        int i2 = 0;
        int i3 = 0;
        while (i2 < str2.length()) {
            if (str2.charAt(i2) != ':') {
                bArr[i3] = (byte) Integer.parseInt(str2.substring(i2, i2 + 2), 16);
                i3++;
                i2++;
            }
            i2++;
        }
        if (i == 0) {
            StringBuilder m = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
            m.append(String.format(Locale.US, "%02X", Byte.valueOf(bArr[0])).substring(1, 2));
            if (!m.toString().equals(str3.substring(0, 2))) {
                return false;
            }
            for (int i4 = 1; i4 < 6; i4++) {
                int i5 = i4 * 3;
                if (!BD_ROTATE_RIGHT[bArr[i4] & 255].equals(str3.substring(i5, i5 + 2))) {
                    return false;
                }
            }
        } else {
            if (i != 1 || !String.format(Locale.US, "%02X", Byte.valueOf((byte) (bArr[0] | 192))).equals(str3.substring(0, 2))) {
                return false;
            }
            for (int i6 = 1; i6 < 6; i6++) {
                int i7 = i6 * 3;
                if (!BD_ROTATE_LEFT[bArr[i6] & 255].equals(str3.substring(i7, i7 + 2))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    public static Pair getBtClassDrawableWithDescription(Context context, CachedBluetoothDevice cachedBluetoothDevice) {
        BluetoothClass bluetoothClass = cachedBluetoothDevice.mDevice.getBluetoothClass();
        if (bluetoothClass != null) {
            int majorDeviceClass = bluetoothClass.getMajorDeviceClass();
            if (majorDeviceClass != 256) {
                if (majorDeviceClass != 512) {
                    if (majorDeviceClass != 1280) {
                        if (majorDeviceClass == 1536) {
                            return new Pair(context.getDrawable(R.drawable.jog_tab_bar_left_end_confirm_red), context.getString(com.android.systemui.R.string.bluetooth_talkback_imaging));
                        }
                    } else {
                        return new Pair(context.getDrawable(HidProfile.getHidClassDrawable(bluetoothClass)), context.getString(com.android.systemui.R.string.bluetooth_talkback_input_peripheral));
                    }
                } else {
                    return new Pair(context.getDrawable(R.drawable.iconfactory_adaptive_icon_drawable_wrapper), context.getString(com.android.systemui.R.string.bluetooth_talkback_phone));
                }
            } else {
                return new Pair(context.getDrawable(R.drawable.ic_corp_user_badge), context.getString(com.android.systemui.R.string.bluetooth_talkback_computer));
            }
        }
        int i = 0;
        for (LocalBluetoothProfile localBluetoothProfile : cachedBluetoothDevice.getProfiles()) {
            int drawableResource = localBluetoothProfile.getDrawableResource(bluetoothClass);
            if (drawableResource != 0) {
                if (!(localBluetoothProfile instanceof HearingAidProfile) && !(localBluetoothProfile instanceof HapClientProfile)) {
                    if (i == 0) {
                        i = drawableResource;
                    }
                } else {
                    return new Pair(context.getDrawable(drawableResource), null);
                }
            }
        }
        if (i != 0) {
            return new Pair(context.getDrawable(i), null);
        }
        if (bluetoothClass != null) {
            if (bluetoothClass.doesClassMatch(0)) {
                return new Pair(context.getDrawable(R.drawable.ic_corp_icon_badge_shadow), context.getString(com.android.systemui.R.string.bluetooth_talkback_headset));
            }
            if (bluetoothClass.doesClassMatch(1)) {
                return new Pair(context.getDrawable(R.drawable.ic_corp_icon_badge_color), context.getString(com.android.systemui.R.string.bluetooth_talkback_headphone));
            }
        }
        return new Pair(context.getDrawable(R.drawable.jog_tab_bar_left_end_confirm_gray).mutate(), context.getString(com.android.systemui.R.string.bluetooth_talkback_bluetooth));
    }

    public static int getConnectionStateSummary(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return 0;
                    }
                    return com.android.systemui.R.string.bluetooth_disconnecting;
                }
                return com.android.systemui.R.string.bluetooth_connected;
            }
            return com.android.systemui.R.string.bluetooth_connecting;
        }
        return com.android.systemui.R.string.bluetooth_disconnected;
    }

    public static CachedBluetoothDevice getDeviceForGroupConnectionState(CachedBluetoothDevice cachedBluetoothDevice) {
        int maxConnectionState = cachedBluetoothDevice.getMaxConnectionState();
        if (maxConnectionState == 2) {
            return cachedBluetoothDevice;
        }
        for (CachedBluetoothDevice cachedBluetoothDevice2 : cachedBluetoothDevice.mMemberDevices) {
            if (maxConnectionState != cachedBluetoothDevice2.getMaxConnectionState()) {
                int maxConnectionState2 = cachedBluetoothDevice.getMaxConnectionState();
                int maxConnectionState3 = cachedBluetoothDevice2.getMaxConnectionState();
                if (maxConnectionState2 == 0 ? maxConnectionState3 != 0 : !(maxConnectionState2 == 1 ? maxConnectionState3 != 2 : maxConnectionState2 != 3 || (maxConnectionState3 != 1 && maxConnectionState3 != 2))) {
                    cachedBluetoothDevice = cachedBluetoothDevice2;
                }
                if (cachedBluetoothDevice.getMaxConnectionState() == 2) {
                    break;
                }
            }
        }
        return cachedBluetoothDevice;
    }

    public static Drawable getHostOverlayIconDrawable(Context context, CachedBluetoothDevice cachedBluetoothDevice) {
        int color;
        if ("com.android.systemui".equals(context.getPackageName().toLowerCase())) {
            color = context.getResources().getColor(com.android.systemui.R.color.qs_detail_item_device_bt_icon_tint_color);
        } else {
            color = context.getResources().getColor(com.android.systemui.R.color.bt_device_icon_tint_color);
        }
        if (cachedBluetoothDevice != null) {
            Drawable iconDrawable = cachedBluetoothDevice.getIconDrawable();
            if (isBtCastConnectedAsHost(context, cachedBluetoothDevice.getAddress())) {
                return getOverlayIconTintableDrawable(iconDrawable, context, com.android.systemui.R.drawable.sharing_ic_overlay, com.android.systemui.R.drawable.sharing_ic_tintable);
            }
            iconDrawable.setTint(color);
            return iconDrawable;
        }
        Log.d("BluetoothUtils", "getHostOverlayIconDrawable - cachedBluetoothDevice is null");
        Drawable drawable = context.getResources().getDrawable(com.android.systemui.R.drawable.list_ic_sound_accessory_default);
        drawable.setTint(color);
        return drawable;
    }

    public static Drawable getOverlayIconTintableDrawable(Drawable drawable, Context context, int i, int i2) {
        int color;
        if ("com.android.systemui".equals(context.getPackageName().toLowerCase())) {
            color = context.getResources().getColor(com.android.systemui.R.color.qs_detail_item_device_bt_icon_tint_color);
        } else {
            color = context.getResources().getColor(com.android.systemui.R.color.bt_device_icon_tint_color);
        }
        drawable.setTint(color);
        Bitmap drawableToBitmap = drawableToBitmap(drawable);
        Bitmap drawableToBitmap2 = drawableToBitmap(context.getResources().getDrawable(i));
        Drawable drawable2 = context.getResources().getDrawable(i2);
        drawable2.setTint(color);
        Bitmap drawableToBitmap3 = drawableToBitmap(drawable2);
        Bitmap createBitmap = Bitmap.createBitmap(drawableToBitmap.getWidth(), drawableToBitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawBitmap(drawableToBitmap, 0.0f, 0.0f, (Paint) null);
        Paint paint = new Paint();
        paint.setFilterBitmap(false);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        canvas.drawBitmap(drawableToBitmap2, 0.0f, 0.0f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER));
        canvas.drawBitmap(drawableToBitmap3, 0.0f, 0.0f, paint);
        paint.setXfermode(null);
        return new BitmapDrawable(context.getResources(), createBitmap);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0176  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List getRestoredDevices(android.content.Context r26, com.android.settingslib.bluetooth.LocalBluetoothProfileManager r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.bluetooth.BluetoothUtils.getRestoredDevices(android.content.Context, com.android.settingslib.bluetooth.LocalBluetoothProfileManager, boolean):java.util.List");
    }

    public static String getStringMetaData(BluetoothDevice bluetoothDevice, int i) {
        byte[] metadata;
        if (bluetoothDevice == null || (metadata = bluetoothDevice.getMetadata(i)) == null) {
            return null;
        }
        return new String(metadata);
    }

    public static String[] getStringToken(String str) {
        if (str != null && !"null".equalsIgnoreCase(str) && !str.isEmpty()) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
            String[] strArr = new String[stringTokenizer.countTokens()];
            int i = 0;
            while (stringTokenizer.hasMoreTokens()) {
                strArr[i] = stringTokenizer.nextToken();
                i++;
            }
            return strArr;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
    
        if (r3[r1 + 1] == 1) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean hasGearManufacturerData(byte[] r3) {
        /*
            if (r3 == 0) goto L14
            int r0 = r3.length
            int r1 = android.bluetooth.BluetoothManufacturerData.OFFSET_OLD_DEVICE_ID
            int r2 = r1 + 2
            if (r0 < r2) goto L14
            r0 = r3[r1]
            if (r0 != 0) goto L14
            r0 = 1
            int r1 = r1 + r0
            r3 = r3[r1]
            if (r3 != r0) goto L14
            goto L15
        L14:
            r0 = 0
        L15:
            java.lang.String r3 = "hasGearManufacturerData : "
            java.lang.String r1 = "BluetoothUtils"
            com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m(r3, r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.bluetooth.BluetoothUtils.hasGearManufacturerData(byte[]):boolean");
    }

    public static boolean isAdvancedDetailsHeader(BluetoothDevice bluetoothDevice) {
        boolean z;
        boolean z2;
        boolean z3;
        byte[] metadata;
        if (!DeviceConfig.getBoolean("settings_ui", "bt_advanced_header_enabled", true)) {
            Log.d("BluetoothUtils", "isAdvancedDetailsHeader: advancedEnabled is false");
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        if (bluetoothDevice == null || (metadata = bluetoothDevice.getMetadata(6)) == null) {
            z2 = false;
        } else {
            z2 = Boolean.parseBoolean(new String(metadata));
        }
        if (z2) {
            Log.d("BluetoothUtils", "isAdvancedDetailsHeader: untetheredHeadset is true");
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            return true;
        }
        String stringMetaData = getStringMetaData(bluetoothDevice, 17);
        if (!TextUtils.equals(stringMetaData, "Untethered Headset") && !TextUtils.equals(stringMetaData, "Watch") && !TextUtils.equals(stringMetaData, "Default") && !TextUtils.equals(stringMetaData, "Stylus")) {
            return false;
        }
        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("isAdvancedDetailsHeader: deviceType is ", stringMetaData, "BluetoothUtils");
        return true;
    }

    public static boolean isBtCastConnectedAsHost(Context context, String str) {
        LocalBluetoothManager localBluetoothManager;
        AudioCastProfile audioCastProfile;
        boolean z;
        List connectedDevices;
        if (SemBluetoothCastAdapter.isBluetoothCastSupported() && (localBluetoothManager = LocalBluetoothManager.getInstance(context, mOnInitCallback)) != null && (audioCastProfile = localBluetoothManager.mLocalCastProfileManager.mAudioCastProfile) != null) {
            int i = 1;
            if (Settings.Secure.getInt(audioCastProfile.mContext.getContentResolver(), "bluetooth_cast_mode", 1) == 1) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                SemBluetoothAudioCast semBluetoothAudioCast = audioCastProfile.mService;
                if (semBluetoothAudioCast == null) {
                    connectedDevices = new ArrayList();
                } else {
                    connectedDevices = semBluetoothAudioCast.getConnectedDevices();
                }
                List list = (List) connectedDevices.stream().filter(new BluetoothUtils$$ExternalSyntheticLambda0(2)).filter(new BluetoothUtils$$ExternalSyntheticLambda1(audioCastProfile, i)).filter(new BluetoothUtils$$ExternalSyntheticLambda0(3)).map(new BluetoothUtils$$ExternalSyntheticLambda2(1)).collect(Collectors.toList());
                if (!list.isEmpty() && list.contains(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isGalaxyWatchDevice(String str, BluetoothClass bluetoothClass, byte[] bArr, ParcelUuid[] parcelUuidArr) {
        int deviceClass;
        boolean z;
        if (bluetoothClass == null) {
            deviceClass = 7936;
        } else {
            deviceClass = bluetoothClass.getDeviceClass();
        }
        if (deviceClass != 7936 && parcelUuidArr != null) {
            ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("isGalaxyWatchDevice: uuids = "), Arrays.toString(parcelUuidArr), "BluetoothUtils");
            if (deviceClass == 1796 && (SemBluetoothUuid.isUuidPresent(parcelUuidArr, ParcelUuid.fromString("a49eb41e-cb06-495c-9f4f-bb80a90cdf00")) || SemBluetoothUuid.isUuidPresent(parcelUuidArr, ParcelUuid.fromString("5e8945b0-9525-11e3-a5e2-0800200c9a66")) || hasGearManufacturerData(bArr))) {
                return true;
            }
        } else {
            if (!"SM-V700".equalsIgnoreCase(str) && !"Samsung Galaxy Gear".equalsIgnoreCase(str) && !str.toLowerCase().startsWith("galaxy gear")) {
                z = false;
            } else {
                z = true;
            }
            if (z || hasGearManufacturerData(bArr)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isRTL(Context context) {
        if ((context.getResources().getConfiguration().screenLayout & 192) == 128) {
            return true;
        }
        return false;
    }

    public static boolean isSyncDevice(byte[] bArr, String str) {
        String[] stringToken;
        boolean z = DEBUG;
        if (bArr != null) {
            byte[] bArr2 = new ManufacturerData(bArr).mData.mDeviceId;
            int i = bArr2[1] & 255;
            byte b = bArr2[0];
            if (((b == 1 || b == 2 || b == 3) && i >= 1 && i <= 255) || (b == 65 && i >= 1 && i <= 255)) {
                if (z) {
                    Log.d("BluetoothUtils", "isSyncDevice :: DeviceId");
                }
                return true;
            }
        }
        if (str != null && str.length() > 0 && (stringToken = getStringToken(str)) != null) {
            for (String str2 : stringToken) {
                if ("e7ab2241-ca64-4a69-ac02-05f5c6fe2d62".equals(str2)) {
                    if (z) {
                        Log.d("BluetoothUtils", "isSyncDevice :: UUID");
                    }
                    return true;
                }
            }
        }
        if (z) {
            Log.d("BluetoothUtils", "isSyncDevice :: It is not synced device");
        }
        return false;
    }

    public static ParcelUuid[] makeParcelUuids(String[] strArr) {
        ParcelUuid[] parcelUuidArr = new ParcelUuid[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            try {
                parcelUuidArr[i] = ParcelUuid.fromString(strArr[i]);
            } catch (Exception e) {
                Log.d("BluetoothUtils", "failed makeParcelUuids");
                e.printStackTrace();
            }
        }
        return parcelUuidArr;
    }

    public static void setQuickPannelOn(boolean z) {
        Log.d("BluetoothUtils", "setQuickPannelOn :: " + z + ", from Dex :: false");
        mQuickPannelOn = z;
        mDexQuickPannelOn = false;
    }

    public static void showToast(final Context context, final String str) {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.android.settingslib.bluetooth.BluetoothUtils.1
            @Override // java.lang.Runnable
            public final void run() {
                Toast.makeText(new ContextThemeWrapper(context, R.style.Theme.DeviceDefault.Settings), str, 0).show();
            }
        }, 0L);
    }

    public static byte[] stringToByte(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            try {
                bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
            } catch (NumberFormatException unused) {
                Log.d("BluetoothUtils", "stringToByte : Wrong format - ".concat(str));
                return null;
            }
        }
        return bArr;
    }

    public static void updateDeviceName(Context context) {
        LocalBluetoothAdapter localBluetoothAdapter = LocalBluetoothAdapter.getInstance();
        String stringForUser = Settings.System.getStringForUser(context.getContentResolver(), ImIntent.Extras.DEVICE_NAME, -2);
        if (stringForUser == null) {
            stringForUser = Settings.Global.getString(context.getContentResolver(), ImIntent.Extras.DEVICE_NAME);
        }
        if (localBluetoothAdapter != null && stringForUser != null) {
            BluetoothAdapter bluetoothAdapter = localBluetoothAdapter.mAdapter;
            if (!stringForUser.equals(bluetoothAdapter.getName())) {
                bluetoothAdapter.setName(stringForUser);
                Log.d("BluetoothUtils", "updateDeviceName :: change device name to ".concat(stringForUser));
            }
        }
    }
}
