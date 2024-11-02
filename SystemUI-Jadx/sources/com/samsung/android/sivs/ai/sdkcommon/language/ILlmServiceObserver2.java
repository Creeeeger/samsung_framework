package com.samsung.android.sivs.ai.sdkcommon.language;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.samsung.android.sdk.scs.ai.language.Result;
import com.samsung.android.sdk.scs.ai.language.ResultErrorException;
import com.samsung.android.sdk.scs.ai.language.service.SmartReplyRunnable2;
import com.samsung.android.sdk.scs.base.ResultException;
import com.samsung.android.sdk.scs.base.utils.Log;
import com.samsung.android.sivs.ai.sdkcommon.asr.SpeechRecognitionConst;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface ILlmServiceObserver2 extends IInterface {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public abstract class Stub extends Binder implements ILlmServiceObserver2 {

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes3.dex */
        public final class Proxy implements ILlmServiceObserver2 {
            public final IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.mRemote;
            }
        }

        public Stub() {
            attachInterface(this, "com.samsung.android.sivs.ai.sdkcommon.language.ILlmServiceObserver2");
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Object obj;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface("com.samsung.android.sivs.ai.sdkcommon.language.ILlmServiceObserver2");
            }
            if (i != 1598968902) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return super.onTransact(i, parcel, parcel2, i2);
                        }
                        parcel2.writeNoException();
                    } else {
                        Parcelable.Creator creator = Bundle.CREATOR;
                        if (parcel.readInt() != 0) {
                            obj = creator.createFromParcel(parcel);
                        } else {
                            obj = null;
                        }
                        Bundle bundle = (Bundle) obj;
                        SmartReplyRunnable2.AnonymousClass1 anonymousClass1 = (SmartReplyRunnable2.AnonymousClass1) this;
                        if (bundle == null) {
                            Log.e("SmartReplyRunnable", "onError= error is null");
                            SmartReplyRunnable2.this.mSource.setException(new ResultException(5, "error is null"));
                        } else {
                            Log.e("SmartReplyRunnable", "onError= " + bundle.getInt("error_code") + bundle.getString(SpeechRecognitionConst.Key.ERROR_MESSAGE));
                            SmartReplyRunnable2.this.mSource.setException(new ResultErrorException(500, bundle.getInt("error_code"), bundle.getString(SpeechRecognitionConst.Key.ERROR_MESSAGE)));
                        }
                        parcel2.writeNoException();
                    }
                } else {
                    ArrayList<Bundle> createTypedArrayList = parcel.createTypedArrayList(Bundle.CREATOR);
                    SmartReplyRunnable2.AnonymousClass1 anonymousClass12 = (SmartReplyRunnable2.AnonymousClass1) this;
                    ArrayList arrayList = new ArrayList();
                    for (Bundle bundle2 : createTypedArrayList) {
                        arrayList.add(new Result(bundle2.getString("content"), bundle2.getString("safety")));
                    }
                    SmartReplyRunnable2.this.mSource.task.setResult(arrayList);
                    parcel2.writeNoException();
                }
                return true;
            }
            parcel2.writeString("com.samsung.android.sivs.ai.sdkcommon.language.ILlmServiceObserver2");
            return true;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }
    }
}
