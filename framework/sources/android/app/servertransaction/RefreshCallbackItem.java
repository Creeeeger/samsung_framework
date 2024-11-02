package android.app.servertransaction;

import android.app.ActivityThread;
import android.app.ClientTransactionHandler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class RefreshCallbackItem extends ActivityTransactionItem {
    public static final Parcelable.Creator<RefreshCallbackItem> CREATOR = new Parcelable.Creator<RefreshCallbackItem>() { // from class: android.app.servertransaction.RefreshCallbackItem.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public RefreshCallbackItem createFromParcel(Parcel in) {
            return new RefreshCallbackItem(in);
        }

        @Override // android.os.Parcelable.Creator
        public RefreshCallbackItem[] newArray(int size) {
            return new RefreshCallbackItem[size];
        }
    };
    private int mPostExecutionState;

    /* synthetic */ RefreshCallbackItem(Parcel parcel, RefreshCallbackItemIA refreshCallbackItemIA) {
        this(parcel);
    }

    @Override // android.app.servertransaction.ActivityTransactionItem
    public void execute(ClientTransactionHandler client, ActivityThread.ActivityClientRecord r, PendingTransactionActions pendingActions) {
    }

    @Override // android.app.servertransaction.BaseClientRequest
    public void postExecute(ClientTransactionHandler client, IBinder token, PendingTransactionActions pendingActions) {
        ActivityThread.ActivityClientRecord r = getActivityClientRecord(client, token);
        client.reportRefresh(r);
    }

    @Override // android.app.servertransaction.ClientTransactionItem
    public int getPostExecutionState() {
        return this.mPostExecutionState;
    }

    @Override // android.app.servertransaction.ClientTransactionItem
    public boolean shouldHaveDefinedPreExecutionState() {
        return false;
    }

    @Override // android.app.servertransaction.ObjectPoolItem
    public void recycle() {
        ObjectPool.recycle(this);
    }

    public static RefreshCallbackItem obtain(int postExecutionState) {
        if (postExecutionState != 5 && postExecutionState != 4) {
            throw new IllegalArgumentException("Only ON_STOP or ON_PAUSE are allowed as a post execution state for RefreshCallbackItem but got " + postExecutionState);
        }
        RefreshCallbackItem instance = (RefreshCallbackItem) ObjectPool.obtain(RefreshCallbackItem.class);
        if (instance == null) {
            instance = new RefreshCallbackItem();
        }
        instance.mPostExecutionState = postExecutionState;
        return instance;
    }

    private RefreshCallbackItem() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mPostExecutionState);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        RefreshCallbackItem other = (RefreshCallbackItem) o;
        if (this.mPostExecutionState == other.mPostExecutionState) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = (17 * 31) + this.mPostExecutionState;
        return result;
    }

    public String toString() {
        return "RefreshCallbackItem{mPostExecutionState=" + this.mPostExecutionState + "}";
    }

    private RefreshCallbackItem(Parcel in) {
        this.mPostExecutionState = in.readInt();
    }

    /* renamed from: android.app.servertransaction.RefreshCallbackItem$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<RefreshCallbackItem> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public RefreshCallbackItem createFromParcel(Parcel in) {
            return new RefreshCallbackItem(in);
        }

        @Override // android.os.Parcelable.Creator
        public RefreshCallbackItem[] newArray(int size) {
            return new RefreshCallbackItem[size];
        }
    }
}
