package android.app.servertransaction;

import android.app.ActivityThread;
import android.app.ClientTransactionHandler;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class EnterPipRequestedItem extends ActivityTransactionItem {
    public static final Parcelable.Creator<EnterPipRequestedItem> CREATOR = new Parcelable.Creator<EnterPipRequestedItem>() { // from class: android.app.servertransaction.EnterPipRequestedItem.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public EnterPipRequestedItem createFromParcel(Parcel in) {
            return new EnterPipRequestedItem();
        }

        @Override // android.os.Parcelable.Creator
        public EnterPipRequestedItem[] newArray(int size) {
            return new EnterPipRequestedItem[size];
        }
    };

    /* synthetic */ EnterPipRequestedItem(EnterPipRequestedItemIA enterPipRequestedItemIA) {
        this();
    }

    @Override // android.app.servertransaction.ActivityTransactionItem
    public void execute(ClientTransactionHandler client, ActivityThread.ActivityClientRecord r, PendingTransactionActions pendingActions) {
        client.handlePictureInPictureRequested(r);
    }

    private EnterPipRequestedItem() {
    }

    public static EnterPipRequestedItem obtain() {
        EnterPipRequestedItem instance = (EnterPipRequestedItem) ObjectPool.obtain(EnterPipRequestedItem.class);
        if (instance == null) {
            return new EnterPipRequestedItem();
        }
        return instance;
    }

    @Override // android.app.servertransaction.ObjectPoolItem
    public void recycle() {
        ObjectPool.recycle(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
    }

    /* renamed from: android.app.servertransaction.EnterPipRequestedItem$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<EnterPipRequestedItem> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public EnterPipRequestedItem createFromParcel(Parcel in) {
            return new EnterPipRequestedItem();
        }

        @Override // android.os.Parcelable.Creator
        public EnterPipRequestedItem[] newArray(int size) {
            return new EnterPipRequestedItem[size];
        }
    }

    public boolean equals(Object o) {
        return this == o;
    }

    public String toString() {
        return "EnterPipRequestedItem{}";
    }
}
