package com.android.systemui.edgelighting.effect.utils.vc;

import android.content.Context;
import android.util.Slog;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NormalVerificationCodeParser extends VerificationCodeParserBase {
    public final Context mContext;

    public NormalVerificationCodeParser(Context context) {
        this.mContext = context;
    }

    @Override // com.android.systemui.edgelighting.effect.utils.vc.VerificationCodeParser
    public final String getVerificationCode(String str) {
        Slog.d("Normal/VerificationCodeParser", "getVerificationCode");
        return VerificationCodeParserBase.getVerificationCode(this.mContext, str, new String[0], new String[0]);
    }
}
