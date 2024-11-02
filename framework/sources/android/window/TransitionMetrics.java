package android.window;

import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Singleton;

/* loaded from: classes4.dex */
public class TransitionMetrics {
    private static final Singleton<TransitionMetrics> sTransitionMetrics = new Singleton<TransitionMetrics>() { // from class: android.window.TransitionMetrics.1
        AnonymousClass1() {
        }

        @Override // android.util.Singleton
        public TransitionMetrics create() {
            return new TransitionMetrics(WindowOrganizer.getTransitionMetricsReporter());
        }
    };
    private final ITransitionMetricsReporter mTransitionMetricsReporter;

    /* synthetic */ TransitionMetrics(ITransitionMetricsReporter iTransitionMetricsReporter, TransitionMetricsIA transitionMetricsIA) {
        this(iTransitionMetricsReporter);
    }

    private TransitionMetrics(ITransitionMetricsReporter reporter) {
        this.mTransitionMetricsReporter = reporter;
    }

    public void reportAnimationStart(IBinder transitionToken) {
        try {
            this.mTransitionMetricsReporter.reportAnimationStart(transitionToken, SystemClock.elapsedRealtime());
        } catch (RemoteException e) {
            e.rethrowFromSystemServer();
        }
    }

    public static TransitionMetrics getInstance() {
        return sTransitionMetrics.get();
    }

    /* renamed from: android.window.TransitionMetrics$1 */
    /* loaded from: classes4.dex */
    class AnonymousClass1 extends Singleton<TransitionMetrics> {
        AnonymousClass1() {
        }

        @Override // android.util.Singleton
        public TransitionMetrics create() {
            return new TransitionMetrics(WindowOrganizer.getTransitionMetricsReporter());
        }
    }
}
