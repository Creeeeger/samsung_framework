package com.sec.internal.ims.entitlement.nsds.strategy;

import android.content.Context;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.log.IMSLog;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class MnoNsdsStrategyCreator {
    private static final String LOG_TAG = "MnoNsdsStrategyCreator";
    private static Map<Integer, MnoNsdsStrategyCreator> sInstanceMap;
    private static Map<Mno, Class<?>> sMnoSpecificStrategyGenerator;
    private IMnoNsdsStrategy sMnoStrategy;

    private MnoNsdsStrategyCreator(Context context, int i) {
        if (sMnoSpecificStrategyGenerator == null) {
            initMnoSpecificStrategy();
        }
        this.sMnoStrategy = createMnoStrategy(context, i);
    }

    public static synchronized void resetMnoStrategy() {
        synchronized (MnoNsdsStrategyCreator.class) {
            Map<Integer, MnoNsdsStrategyCreator> map = sInstanceMap;
            if (map != null) {
                map.clear();
            }
        }
    }

    public static synchronized MnoNsdsStrategyCreator getInstance(Context context, int i) {
        MnoNsdsStrategyCreator mnoNsdsStrategyCreator;
        synchronized (MnoNsdsStrategyCreator.class) {
            if (sInstanceMap == null) {
                sInstanceMap = new HashMap();
            }
            if (sInstanceMap.get(Integer.valueOf(i)) == null) {
                sInstanceMap.put(Integer.valueOf(i), new MnoNsdsStrategyCreator(context, i));
            }
            mnoNsdsStrategyCreator = sInstanceMap.get(Integer.valueOf(i));
        }
        return mnoNsdsStrategyCreator;
    }

    private static void initMnoSpecificStrategy() {
        HashMap hashMap = new HashMap();
        sMnoSpecificStrategyGenerator = hashMap;
        hashMap.put(Mno.TMOUS, TmoNsdsStrategy.class);
        sMnoSpecificStrategyGenerator.put(Mno.ATT, AttNsdsStrategy.class);
        sMnoSpecificStrategyGenerator.put(Mno.GCI, XaaNsdsStrategy.class);
    }

    private IMnoNsdsStrategy createMnoStrategy(Context context, int i) {
        try {
            Mno simMno = SimUtil.getSimMno(i);
            IMSLog.i(LOG_TAG, i, "createMnoStrategy: Mno = " + simMno);
            if (sMnoSpecificStrategyGenerator.containsKey(simMno)) {
                return (IMnoNsdsStrategy) sMnoSpecificStrategyGenerator.get(simMno).getConstructor(Context.class).newInstance(context);
            }
            return null;
        } catch (IllegalAccessException | IllegalArgumentException | IllegalStateException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            IMSLog.s(LOG_TAG, "exception" + e.getMessage());
            return null;
        }
    }

    public IMnoNsdsStrategy getMnoStrategy() {
        return this.sMnoStrategy;
    }
}
