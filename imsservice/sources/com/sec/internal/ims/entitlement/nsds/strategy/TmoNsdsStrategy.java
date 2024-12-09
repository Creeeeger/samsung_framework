package com.sec.internal.ims.entitlement.nsds.strategy;

import android.content.Context;
import com.sec.internal.ims.entitlement.nsds.strategy.DefaultNsdsMnoStrategy;

/* loaded from: classes.dex */
public class TmoNsdsStrategy extends DefaultNsdsMnoStrategy {
    public TmoNsdsStrategy(Context context) {
        super(context);
        this.mStrategyType = DefaultNsdsMnoStrategy.NsdsStrategyType.TMOUS;
    }
}
