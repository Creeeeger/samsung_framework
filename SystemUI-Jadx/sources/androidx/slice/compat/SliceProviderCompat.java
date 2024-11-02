package androidx.slice.compat;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import androidx.collection.ArraySet;
import androidx.core.graphics.drawable.IconCompat;
import androidx.slice.SliceItemHolder;
import androidx.slice.SliceProvider;
import androidx.versionedparcelable.VersionedParcelable;
import java.util.Collections;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SliceProviderCompat {
    public String mCallback;
    public final Context mContext;
    public final CompatPermissionManager mPermissionManager;
    public final SliceProvider mProvider;
    public final Handler mHandler = new Handler(Looper.getMainLooper());
    public final AnonymousClass1 mAnr = new Runnable() { // from class: androidx.slice.compat.SliceProviderCompat.1
        @Override // java.lang.Runnable
        public final void run() {
            Process.sendSignal(Process.myPid(), 3);
            Log.wtf("SliceProviderCompat", "Timed out while handling slice callback " + SliceProviderCompat.this.mCallback);
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.slice.compat.SliceProviderCompat$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 {
        public final /* synthetic */ Context val$context;

        public AnonymousClass2(Context context) {
            this.val$context = context;
        }

        public final void handle(SliceItemHolder sliceItemHolder) {
            VersionedParcelable versionedParcelable = sliceItemHolder.mVersionedParcelable;
            if (versionedParcelable instanceof IconCompat) {
                IconCompat iconCompat = (IconCompat) versionedParcelable;
                iconCompat.checkResource(this.val$context);
                int i = iconCompat.mType;
                if (i == -1) {
                    i = ((Icon) iconCompat.mObj1).getType();
                }
                if (i == 2 && iconCompat.getResId() == 0) {
                    sliceItemHolder.mVersionedParcelable = null;
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ProviderHolder implements AutoCloseable {
        public final ContentProviderClient mProvider;

        public ProviderHolder(ContentProviderClient contentProviderClient) {
            this.mProvider = contentProviderClient;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            ContentProviderClient contentProviderClient = this.mProvider;
            if (contentProviderClient == null) {
                return;
            }
            contentProviderClient.close();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.slice.compat.SliceProviderCompat$1] */
    public SliceProviderCompat(SliceProvider sliceProvider, CompatPermissionManager compatPermissionManager, Context context) {
        this.mProvider = sliceProvider;
        this.mContext = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences("slice_data_all_slice_files", 0);
        Set<String> stringSet = sharedPreferences.getStringSet("slice_data_all_slice_files", Collections.emptySet());
        if (!stringSet.contains("slice_data_androidx.slice.compat.SliceProviderCompat")) {
            ArraySet arraySet = new ArraySet(stringSet);
            arraySet.add("slice_data_androidx.slice.compat.SliceProviderCompat");
            sharedPreferences.edit().putStringSet("slice_data_all_slice_files", arraySet).commit();
        }
        new CompatPinnedList(context, "slice_data_androidx.slice.compat.SliceProviderCompat");
        this.mPermissionManager = compatPermissionManager;
    }

    public static ProviderHolder acquireClient(ContentResolver contentResolver, Uri uri) {
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
        if (acquireUnstableContentProviderClient != null) {
            return new ProviderHolder(acquireUnstableContentProviderClient);
        }
        throw new IllegalArgumentException("No provider found for " + uri);
    }
}
