package com.sec.internal.ims.servicemodules.im.strategy;

import android.content.Context;
import com.sec.internal.constants.Mno;

/* loaded from: classes.dex */
public class MnoStrategyCreator {
    public static IMnoStrategy makeInstance(Mno mno, int i, Context context) {
        RcsPolicyType policyType = RcsPolicyTypeFactory.getPolicyType(mno, i, context);
        IMnoStrategy strategy = policyType.getStrategy(context, i);
        strategy.setPolicyType(policyType);
        return strategy;
    }
}
