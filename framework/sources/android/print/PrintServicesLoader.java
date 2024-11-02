package android.print;

import android.content.Context;
import android.content.Loader;
import android.os.Handler;
import android.os.Message;
import android.print.PrintManager;
import android.printservice.PrintServiceInfo;
import com.android.internal.util.Preconditions;
import java.util.List;

/* loaded from: classes3.dex */
public class PrintServicesLoader extends Loader<List<PrintServiceInfo>> {
    private final Handler mHandler;
    private PrintManager.PrintServicesChangeListener mListener;
    private final PrintManager mPrintManager;
    private final int mSelectionFlags;

    public PrintServicesLoader(PrintManager printManager, Context context, int selectionFlags) {
        super((Context) Preconditions.checkNotNull(context));
        this.mHandler = new MyHandler();
        this.mPrintManager = (PrintManager) Preconditions.checkNotNull(printManager);
        this.mSelectionFlags = Preconditions.checkFlagsArgument(selectionFlags, 3);
    }

    @Override // android.content.Loader
    public void onForceLoad() {
        queueNewResult();
    }

    public void queueNewResult() {
        Message m = this.mHandler.obtainMessage(0);
        m.obj = this.mPrintManager.getPrintServices(this.mSelectionFlags);
        this.mHandler.sendMessage(m);
    }

    /* renamed from: android.print.PrintServicesLoader$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements PrintManager.PrintServicesChangeListener {
        AnonymousClass1() {
        }

        @Override // android.print.PrintManager.PrintServicesChangeListener
        public void onPrintServicesChanged() {
            PrintServicesLoader.this.queueNewResult();
        }
    }

    @Override // android.content.Loader
    protected void onStartLoading() {
        AnonymousClass1 anonymousClass1 = new PrintManager.PrintServicesChangeListener() { // from class: android.print.PrintServicesLoader.1
            AnonymousClass1() {
            }

            @Override // android.print.PrintManager.PrintServicesChangeListener
            public void onPrintServicesChanged() {
                PrintServicesLoader.this.queueNewResult();
            }
        };
        this.mListener = anonymousClass1;
        this.mPrintManager.addPrintServicesChangeListener(anonymousClass1, null);
        deliverResult(this.mPrintManager.getPrintServices(this.mSelectionFlags));
    }

    @Override // android.content.Loader
    protected void onStopLoading() {
        PrintManager.PrintServicesChangeListener printServicesChangeListener = this.mListener;
        if (printServicesChangeListener != null) {
            this.mPrintManager.removePrintServicesChangeListener(printServicesChangeListener);
            this.mListener = null;
        }
        this.mHandler.removeMessages(0);
    }

    @Override // android.content.Loader
    public void onReset() {
        onStopLoading();
    }

    /* loaded from: classes3.dex */
    private class MyHandler extends Handler {
        public MyHandler() {
            super(PrintServicesLoader.this.getContext().getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (PrintServicesLoader.this.isStarted()) {
                PrintServicesLoader.this.deliverResult((List) msg.obj);
            }
        }
    }
}
