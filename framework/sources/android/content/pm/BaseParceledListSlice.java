package android.content.pm;

import android.os.BadParcelableException;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.samsung.android.rune.PMRune;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class BaseParceledListSlice<T> implements Parcelable {
    private List<T> mList;
    private static String TAG = "ParceledListSlice";
    private static boolean DEBUG = false;
    private static final int MAX_IPC_SIZE = IBinder.getSuggestedMaxIpcSizeBytes();
    private int mInlineCountLimit = Integer.MAX_VALUE;
    private boolean mHasBeenParceled = false;
    private int mStartIndexForWrite = -1;

    protected abstract Parcelable.Creator<?> readParcelableCreator(Parcel parcel, ClassLoader classLoader);

    protected abstract void writeElement(T t, Parcel parcel, int i);

    protected abstract void writeParcelableCreator(T t, Parcel parcel);

    public BaseParceledListSlice(List<T> list) {
        this.mList = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseParceledListSlice(Parcel p, ClassLoader loader) {
        BaseParceledListSlice<T> baseParceledListSlice = this;
        int i = 0;
        int N = p.readInt();
        baseParceledListSlice.mList = new ArrayList(N);
        if (DEBUG) {
            Log.d(TAG, "Retrieving " + N + " items");
        }
        if (N <= 0) {
            return;
        }
        Parcelable.Creator<?> creator = readParcelableCreator(p, loader);
        Class<?> listElementClass = null;
        int i2 = 0;
        while (i2 < N && p.readInt() != 0) {
            listElementClass = baseParceledListSlice.readVerifyAndAddElement(creator, p, loader, listElementClass);
            if (DEBUG) {
                String str = TAG;
                StringBuilder append = new StringBuilder().append("Read inline #").append(i2).append(": ");
                List<T> list = baseParceledListSlice.mList;
                Log.d(str, append.append(list.get(list.size() - 1)).toString());
            }
            i2++;
        }
        if (i2 >= N) {
            return;
        }
        IBinder retriever = p.readStrongBinder();
        while (i2 < N) {
            if (DEBUG) {
                Log.d(TAG, "Reading more @" + i2 + " of " + N + ": retriever=" + retriever);
            }
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            data.writeInt(i2);
            try {
                try {
                    retriever.transact(1, data, reply, i);
                    if (!PMRune.PM_WA_PARCELED_LIST) {
                        reply.readException();
                    }
                    while (i2 < N && reply.readInt() != 0) {
                        listElementClass = baseParceledListSlice.readVerifyAndAddElement(creator, reply, loader, listElementClass);
                        if (DEBUG) {
                            Log.d(TAG, new StringBuilder().append("Read extra #").append(i2).append(": ").append(baseParceledListSlice.mList.get(r15.size() - 1)).toString());
                        }
                        i2++;
                        baseParceledListSlice = this;
                    }
                    reply.recycle();
                    data.recycle();
                    i = 0;
                    baseParceledListSlice = this;
                } catch (RemoteException e) {
                    throw new BadParcelableException("Failure retrieving array; only received " + i2 + " of " + N, e);
                }
            } catch (Throwable th) {
                reply.recycle();
                data.recycle();
                throw th;
            }
        }
    }

    private Class<?> readVerifyAndAddElement(Parcelable.Creator<?> creator, Parcel p, ClassLoader loader, Class<?> listElementClass) {
        T parcelable = readCreator(creator, p, loader);
        if (listElementClass == null) {
            listElementClass = parcelable.getClass();
        } else {
            verifySameType(listElementClass, parcelable.getClass());
        }
        this.mList.add(parcelable);
        return listElementClass;
    }

    private T readCreator(Parcelable.Creator<?> creator, Parcel parcel, ClassLoader classLoader) {
        if (creator instanceof Parcelable.ClassLoaderCreator) {
            return (T) ((Parcelable.ClassLoaderCreator) creator).createFromParcel(parcel, classLoader);
        }
        return (T) creator.createFromParcel(parcel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void verifySameType(Class<?> expected, Class<?> actual) {
        if (!actual.equals(expected)) {
            throw new IllegalArgumentException("Can't unparcel type " + (actual == null ? null : actual.getName()) + " in list of type " + (expected != null ? expected.getName() : null));
        }
    }

    public List<T> getList() {
        return this.mList;
    }

    public void setInlineCountLimit(int maxCount) {
        this.mInlineCountLimit = maxCount;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009d, code lost:            r11.writeInt(0);        r0 = new android.content.pm.BaseParceledListSlice.AnonymousClass1(r10);     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a7, code lost:            if (android.content.pm.BaseParceledListSlice.DEBUG == false) goto L22;     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a9, code lost:            android.util.Log.d(android.content.pm.BaseParceledListSlice.TAG, "Breaking @" + r5 + " of " + r1 + ": retriever=" + r0);     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d5, code lost:            r11.writeStrongBinder(r0);     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00d8, code lost:            return;     */
    @Override // android.os.Parcelable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void writeToParcel(android.os.Parcel r11, final int r12) {
        /*
            r10 = this;
            boolean r0 = r10.mHasBeenParceled
            if (r0 != 0) goto Ld9
            r0 = 1
            r10.mHasBeenParceled = r0
            java.util.List<T> r1 = r10.mList
            int r1 = r1.size()
            r2 = r12
            r11.writeInt(r1)
            boolean r3 = android.content.pm.BaseParceledListSlice.DEBUG
            if (r3 == 0) goto L33
            java.lang.String r3 = android.content.pm.BaseParceledListSlice.TAG
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Writing "
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.StringBuilder r4 = r4.append(r1)
            java.lang.String r5 = " items"
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r4 = r4.toString()
            android.util.Log.d(r3, r4)
        L33:
            if (r1 <= 0) goto Ld8
            java.util.List<T> r3 = r10.mList
            r4 = 0
            java.lang.Object r3 = r3.get(r4)
            java.lang.Class r3 = r3.getClass()
            java.util.List<T> r5 = r10.mList
            java.lang.Object r5 = r5.get(r4)
            r10.writeParcelableCreator(r5, r11)
            r5 = 0
        L4a:
            if (r5 >= r1) goto L9b
            int r6 = r10.mInlineCountLimit
            if (r5 >= r6) goto L9b
            int r6 = r11.dataSize()
            int r7 = android.content.pm.BaseParceledListSlice.MAX_IPC_SIZE
            if (r6 >= r7) goto L9b
            r11.writeInt(r0)
            java.util.List<T> r6 = r10.mList
            java.lang.Object r6 = r6.get(r5)
            java.lang.Class r7 = r6.getClass()
            verifySameType(r3, r7)
            r10.writeElement(r6, r11, r2)
            boolean r7 = android.content.pm.BaseParceledListSlice.DEBUG
            if (r7 == 0) goto L97
            java.lang.String r7 = android.content.pm.BaseParceledListSlice.TAG
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "Wrote inline #"
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.StringBuilder r8 = r8.append(r5)
            java.lang.String r9 = ": "
            java.lang.StringBuilder r8 = r8.append(r9)
            java.util.List<T> r9 = r10.mList
            java.lang.Object r9 = r9.get(r5)
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.String r8 = r8.toString()
            android.util.Log.d(r7, r8)
        L97:
            int r5 = r5 + 1
            goto L4a
        L9b:
            if (r5 >= r1) goto Ld8
            r11.writeInt(r4)
            android.content.pm.BaseParceledListSlice$1 r0 = new android.content.pm.BaseParceledListSlice$1
            r0.<init>()
            boolean r4 = android.content.pm.BaseParceledListSlice.DEBUG
            if (r4 == 0) goto Ld5
            java.lang.String r4 = android.content.pm.BaseParceledListSlice.TAG
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Breaking @"
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.StringBuilder r6 = r6.append(r5)
            java.lang.String r7 = " of "
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.StringBuilder r6 = r6.append(r1)
            java.lang.String r7 = ": retriever="
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.StringBuilder r6 = r6.append(r0)
            java.lang.String r6 = r6.toString()
            android.util.Log.d(r4, r6)
        Ld5:
            r11.writeStrongBinder(r0)
        Ld8:
            return
        Ld9:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Can't Parcel a ParceledListSlice more than once"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.content.pm.BaseParceledListSlice.writeToParcel(android.os.Parcel, int):void");
    }
}
