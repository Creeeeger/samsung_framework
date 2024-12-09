package com.sec.internal.ims.entitlement.config.app.nsdsconfig.strategy;

import android.content.Context;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.interfaces.ims.entitlement.config.IMnoNsdsConfigStrategy;
import com.sec.internal.log.IMSLog;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class MnoNsdsConfigStrategyCreator {
    private static final String LOG_TAG = "MnoNsdsConfigStrategyCreator";
    private static Map<Mno, Class<?>> sMnoSpecificStrategyGenerator;
    private static Map<Integer, IMnoNsdsConfigStrategy> sMnoStrategy = new ConcurrentHashMap();

    static {
        initMnoSpecificStrategy();
    }

    private static void initMnoSpecificStrategy() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        sMnoSpecificStrategyGenerator = concurrentHashMap;
        concurrentHashMap.put(Mno.TMOUS, TmoNsdsConfigStrategy.class);
    }

    public static synchronized void updateMnoStrategy(Context context, int i) {
        synchronized (MnoNsdsConfigStrategyCreator.class) {
            IMSLog.i(LOG_TAG, i, "updateMnoStrategy : onSimReady");
            sMnoStrategy.remove(Integer.valueOf(i));
            sMnoStrategy.put(Integer.valueOf(i), createMnoStrategy(context, i));
        }
    }

    public static synchronized IMnoNsdsConfigStrategy getMnoStrategy(int i) {
        IMnoNsdsConfigStrategy iMnoNsdsConfigStrategy;
        synchronized (MnoNsdsConfigStrategyCreator.class) {
            iMnoNsdsConfigStrategy = sMnoStrategy.get(Integer.valueOf(i));
            if (iMnoNsdsConfigStrategy == null) {
                IMSLog.i(LOG_TAG, i, "MnoStrategy is not exist. Return null..");
            }
        }
        return iMnoNsdsConfigStrategy;
    }

    private static synchronized IMnoNsdsConfigStrategy createMnoStrategy(Context context, int i) {
        synchronized (MnoNsdsConfigStrategyCreator.class) {
            try {
                Mno simMno = SimUtil.getSimMno(i);
                IMSLog.i(LOG_TAG, i, "createMnoStrategy: Mno=" + simMno);
                if (sMnoSpecificStrategyGenerator.containsKey(simMno)) {
                    return (IMnoNsdsConfigStrategy) sMnoSpecificStrategyGenerator.get(simMno).getConstructor(Context.class).newInstance(context);
                }
            } catch (IllegalAccessException | IllegalArgumentException | IllegalStateException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                IMSLog.s(LOG_TAG, i, "Caught : " + e.getMessage());
            }
            return new DefaultNsdsConfigStrategy(context);
        }
    }
}
