package com.android.systemui.edgelighting.effect.utils;

import android.content.Context;
import android.os.Debug;
import android.text.TextUtils;
import android.util.Slog;
import com.android.systemui.edgelighting.effect.utils.vc.ChnVerificationCodeParser;
import com.android.systemui.edgelighting.effect.utils.vc.IndVerificationCodeParser;
import com.android.systemui.edgelighting.effect.utils.vc.KorVerificationCodeParser;
import com.android.systemui.edgelighting.effect.utils.vc.MalVerificationCodeParser;
import com.android.systemui.edgelighting.effect.utils.vc.MymVerificationCodeParser;
import com.android.systemui.edgelighting.effect.utils.vc.NormalVerificationCodeParser;
import com.android.systemui.edgelighting.effect.utils.vc.PhiVerificationCodeParser;
import com.android.systemui.edgelighting.effect.utils.vc.SinVerificationCodeParser;
import com.android.systemui.edgelighting.effect.utils.vc.ThlVerificationCodeParser;
import com.android.systemui.edgelighting.effect.utils.vc.VerificationCodeParser;
import com.android.systemui.edgelighting.effect.utils.vc.VnVerificationCodeParser;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class VerificationCodeUtils {
    public static final boolean DEBUG = Debug.semIsProductDev();
    public static String Verify_Code = null;
    public static int code_startIndex = -1;
    public static int code_endIndex = -1;

    public static String getVerifyCode() {
        if (DEBUG) {
            Slog.i("ORC/VerificationCodeUtils", "code is " + Verify_Code);
        }
        String str = Verify_Code;
        if (str == null) {
            return "";
        }
        if (str.contains("-")) {
            return Verify_Code.replaceAll("[^\\d]", "");
        }
        return Verify_Code;
    }

    public static boolean isVerificationCode(Context context, String str) {
        VerificationCodeParser normalVerificationCodeParser;
        if (TextUtils.isEmpty(str)) {
            Slog.i("ORC/VerificationCodeUtils", "isVerificationCode() is false");
            return false;
        }
        Verify_Code = null;
        if (SalesCode.isVn) {
            normalVerificationCodeParser = new VnVerificationCodeParser(context);
        } else if (SalesCode.isPHI) {
            normalVerificationCodeParser = new PhiVerificationCodeParser(context);
        } else if (SalesCode.isMAL) {
            normalVerificationCodeParser = new MalVerificationCodeParser(context);
        } else if (SalesCode.isTHL) {
            normalVerificationCodeParser = new ThlVerificationCodeParser(context);
        } else if (SalesCode.isIND) {
            normalVerificationCodeParser = new IndVerificationCodeParser(context);
        } else if (SalesCode.isMYM) {
            normalVerificationCodeParser = new MymVerificationCodeParser(context);
        } else if (SalesCode.isSIN) {
            normalVerificationCodeParser = new SinVerificationCodeParser(context);
        } else if (SalesCode.isKor) {
            normalVerificationCodeParser = new KorVerificationCodeParser(context);
        } else if (SalesCode.isChn) {
            normalVerificationCodeParser = new ChnVerificationCodeParser(context);
        } else {
            normalVerificationCodeParser = new NormalVerificationCodeParser(context);
        }
        String verificationCode = normalVerificationCodeParser.getVerificationCode(str);
        Verify_Code = verificationCode;
        if (verificationCode == null) {
            return false;
        }
        int indexOf = str.indexOf(verificationCode);
        code_startIndex = indexOf;
        code_endIndex = Verify_Code.length() + indexOf;
        return true;
    }
}
