package com.android.systemui.edgelighting.effect.utils.vc;

import android.content.Context;
import android.util.Slog;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PhiVerificationCodeParser extends VerificationCodeParserBase {
    public final Context mContext;

    public PhiVerificationCodeParser(Context context) {
        this.mContext = context;
    }

    @Override // com.android.systemui.edgelighting.effect.utils.vc.VerificationCodeParser
    public final String getVerificationCode(String str) {
        Slog.d("ORC/PhiVerificationCodeParser", "getVerificationCode");
        Context context = this.mContext;
        return VerificationCodeParserBase.getVerificationCode(context, str, context.getResources().getStringArray(R.array.verification_code_strong_phi), context.getResources().getStringArray(R.array.verification_code_weak_phi));
    }
}
