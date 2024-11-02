package com.android.settingslib.users;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.EventLog;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;
import androidx.core.graphics.drawable.RoundedBitmapDrawable21;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.internal.util.UserIcons;
import com.android.settingslib.users.AvatarPhotoController;
import com.android.settingslib.users.AvatarPickerActivity;
import com.android.settingslib.utils.ThreadUtils;
import com.android.systemui.R;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutionException;
import libcore.io.Streams;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class AvatarPickerActivity extends AppCompatActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public AvatarAdapter mAdapter;
    public AvatarPhotoController mAvatarPhotoController;
    public Button mSaveButton;
    public boolean mWaitingForActivityResult;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class AutoFitGridLayoutManager extends GridLayoutManager {
        public final int mColumnWidth;
        public final int mSpanCount;
        public int mTotalSpace;

        public AutoFitGridLayoutManager(AvatarPickerActivity avatarPickerActivity, Context context, int i) {
            super(context, i);
            this.mTotalSpace = 0;
            this.mColumnWidth = avatarPickerActivity.getResources().getDimensionPixelSize(R.dimen.sec_avatar_full_size_in_picker);
            this.mSpanCount = i;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
            int paddingRight = (this.mWidth - getPaddingRight()) - getPaddingLeft();
            if (this.mTotalSpace < paddingRight) {
                this.mTotalSpace = paddingRight;
            }
            int max = Math.max(1, this.mTotalSpace / this.mColumnWidth);
            int i = this.mSpanCount;
            if (max > i) {
                max = i;
            }
            setSpanCount(max);
            super.onLayoutChildren(recycler, state);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class AvatarAdapter extends RecyclerView.Adapter {
        public final List mImageDescriptions;
        public final List mImageDrawables;
        public final TypedArray mPreselectedImages;
        public int mSelectedPosition = -1;
        public final int[] mUserIconColors;

        public AvatarAdapter() {
            List list;
            this.mPreselectedImages = AvatarPickerActivity.this.getResources().obtainTypedArray(R.array.avatar_images);
            this.mUserIconColors = UserIcons.getUserIconColors(AvatarPickerActivity.this.getResources());
            ArrayList arrayList = new ArrayList();
            int i = 0;
            int i2 = 0;
            while (true) {
                TypedArray typedArray = this.mPreselectedImages;
                int length = typedArray.length();
                AvatarPickerActivity avatarPickerActivity = AvatarPickerActivity.this;
                if (i2 < length) {
                    Drawable drawable = typedArray.getDrawable(i2);
                    if (drawable instanceof BitmapDrawable) {
                        RoundedBitmapDrawable21 roundedBitmapDrawable21 = new RoundedBitmapDrawable21(avatarPickerActivity.getResources(), ((BitmapDrawable) drawable).getBitmap());
                        roundedBitmapDrawable21.mIsCircular = true;
                        roundedBitmapDrawable21.mApplyGravity = true;
                        roundedBitmapDrawable21.mCornerRadius = Math.min(roundedBitmapDrawable21.mBitmapHeight, roundedBitmapDrawable21.mBitmapWidth) / 2;
                        roundedBitmapDrawable21.mPaint.setShader(roundedBitmapDrawable21.mBitmapShader);
                        roundedBitmapDrawable21.invalidateSelf();
                        arrayList.add(roundedBitmapDrawable21);
                        i2++;
                    } else {
                        throw new IllegalStateException("Avatar drawables must be bitmaps");
                    }
                } else {
                    if (arrayList.isEmpty()) {
                        while (true) {
                            int[] iArr = this.mUserIconColors;
                            if (i >= iArr.length) {
                                break;
                            }
                            arrayList.add(UserIcons.getDefaultUserIconInColor(avatarPickerActivity.getResources(), iArr[i]));
                            i++;
                        }
                    }
                    this.mImageDrawables = arrayList;
                    if (this.mPreselectedImages.length() > 0) {
                        list = Arrays.asList(AvatarPickerActivity.this.getResources().getStringArray(R.array.avatar_image_descriptions));
                    } else {
                        list = null;
                    }
                    this.mImageDescriptions = list;
                    return;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return ((ArrayList) this.mImageDrawables).size() + 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
            boolean z;
            ImageView imageView = ((AvatarViewHolder) viewHolder).mImageView;
            if (i >= 0) {
                int i2 = i + 0;
                if (i == this.mSelectedPosition) {
                    z = true;
                } else {
                    z = false;
                }
                imageView.setSelected(z);
                imageView.setImageDrawable((Drawable) ((ArrayList) this.mImageDrawables).get(i2));
                List list = this.mImageDescriptions;
                if (list != null && i2 < list.size()) {
                    imageView.setContentDescription((String) list.get(i2));
                } else {
                    imageView.setContentDescription(AvatarPickerActivity.this.getString(R.string.default_user_icon_description));
                }
            }
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.android.settingslib.users.AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AvatarPickerActivity.AvatarAdapter avatarAdapter = AvatarPickerActivity.AvatarAdapter.this;
                    int i3 = i;
                    int i4 = avatarAdapter.mSelectedPosition;
                    AvatarPickerActivity avatarPickerActivity = AvatarPickerActivity.this;
                    if (i4 == i3) {
                        avatarAdapter.mSelectedPosition = -1;
                        avatarAdapter.notifyItemChanged(i3);
                        int i5 = AvatarPickerActivity.$r8$clinit;
                        avatarPickerActivity.saveButtonSetEnabled(false);
                        return;
                    }
                    avatarAdapter.mSelectedPosition = i3;
                    avatarAdapter.notifyItemChanged(i3);
                    if (i4 != -1) {
                        avatarAdapter.notifyItemChanged(i4);
                    } else {
                        int i6 = AvatarPickerActivity.$r8$clinit;
                        avatarPickerActivity.saveButtonSetEnabled(true);
                    }
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
            return new AvatarViewHolder(LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.avatar_item, (ViewGroup) recyclerView, false));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class AvatarViewHolder extends RecyclerView.ViewHolder {
        public final ImageView mImageView;

        public AvatarViewHolder(View view) {
            super(view);
            this.mImageView = (ImageView) view.findViewById(R.id.avatar_image);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class GridItemDecoration extends RecyclerView.ItemDecoration {
        public final boolean mIncludeEdge;
        public final boolean mRtl;
        public final int mSpacing;
        public final int mSpacingTop;

        public GridItemDecoration(AvatarPickerActivity avatarPickerActivity, Context context, boolean z) {
            this.mSpacing = context.getResources().getDimensionPixelSize(R.dimen.sec_avatar_item_side_padding);
            this.mSpacingTop = context.getResources().getDimensionPixelSize(R.dimen.sec_avatar_item_top_bottom_padding);
            this.mIncludeEdge = z;
            this.mRtl = MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0.m(context) == 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            RecyclerView.LayoutManager layoutManager$1 = recyclerView.getLayoutManager$1();
            if (!(layoutManager$1 instanceof GridLayoutManager)) {
                return;
            }
            int i = ((GridLayoutManager) layoutManager$1).mSpanCount;
            int childAdapterPosition = RecyclerView.getChildAdapterPosition(view) % i;
            boolean z = this.mIncludeEdge;
            int i2 = this.mSpacing;
            if (z) {
                int i3 = i2 / 2;
                rect.left = i3;
                rect.right = i3;
                int i4 = this.mSpacingTop;
                rect.top = i4;
                rect.bottom = i4;
                if (this.mRtl) {
                    rect.left = i3;
                    rect.right = i3;
                    return;
                }
                return;
            }
            rect.left = (childAdapterPosition * i2) / i;
            rect.right = i2 - (((childAdapterPosition + 1) * i2) / i);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        final Uri uri;
        super.onActivityResult(i, i2, intent);
        final boolean z = false;
        this.mWaitingForActivityResult = false;
        final AvatarPhotoController avatarPhotoController = this.mAvatarPhotoController;
        if (i2 != -1) {
            avatarPhotoController.getClass();
            return;
        }
        Uri uri2 = avatarPhotoController.mTakePictureUri;
        if (intent != null && intent.getData() != null) {
            uri = intent.getData();
        } else {
            uri = uri2;
        }
        if (!"content".equals(uri.getScheme())) {
            Log.e("AvatarPhotoController", "Invalid pictureUri scheme: " + uri.getScheme());
            EventLog.writeEvent(1397638484, "172939189", -1, uri.getPath());
            return;
        }
        switch (i) {
            case 1001:
                try {
                    final boolean z2 = true;
                    ThreadUtils.postOnBackgroundThread(new Runnable() { // from class: com.android.settingslib.users.AvatarPhotoController$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            AvatarPhotoController avatarPhotoController2 = AvatarPhotoController.this;
                            Uri uri3 = uri;
                            boolean z3 = z2;
                            ContentResolver contentResolver = ((AvatarPhotoController.ContextInjectorImpl) avatarPhotoController2.mContextInjector).mContext.getContentResolver();
                            try {
                                InputStream openInputStream = contentResolver.openInputStream(uri3);
                                try {
                                    OutputStream openOutputStream = contentResolver.openOutputStream(avatarPhotoController2.mPreCropPictureUri);
                                    try {
                                        Streams.copy(openInputStream, openOutputStream);
                                        if (openOutputStream != null) {
                                            openOutputStream.close();
                                        }
                                        if (openInputStream != null) {
                                            openInputStream.close();
                                        }
                                        AvatarPhotoController$$ExternalSyntheticLambda2 avatarPhotoController$$ExternalSyntheticLambda2 = new AvatarPhotoController$$ExternalSyntheticLambda2(avatarPhotoController2, 1);
                                        if (z3) {
                                            if (ThreadUtils.sMainThreadHandler == null) {
                                                ThreadUtils.sMainThreadHandler = new Handler(Looper.getMainLooper());
                                            }
                                            ThreadUtils.sMainThreadHandler.postDelayed(avatarPhotoController$$ExternalSyntheticLambda2, 150L);
                                            return;
                                        }
                                        ThreadUtils.postOnMainThread(avatarPhotoController$$ExternalSyntheticLambda2);
                                    } finally {
                                    }
                                } finally {
                                }
                            } catch (IOException e) {
                                Log.w("AvatarPhotoController", "Failed to copy photo", e);
                            }
                        }
                    }).get();
                    return;
                } catch (InterruptedException | ExecutionException e) {
                    Log.e("AvatarPhotoController", "Error performing copy-and-crop", e);
                    return;
                }
            case 1002:
                if (uri2.equals(uri)) {
                    avatarPhotoController.cropPhoto(uri);
                    return;
                }
                try {
                    ThreadUtils.postOnBackgroundThread(new Runnable() { // from class: com.android.settingslib.users.AvatarPhotoController$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            AvatarPhotoController avatarPhotoController2 = AvatarPhotoController.this;
                            Uri uri3 = uri;
                            boolean z3 = z;
                            ContentResolver contentResolver = ((AvatarPhotoController.ContextInjectorImpl) avatarPhotoController2.mContextInjector).mContext.getContentResolver();
                            try {
                                InputStream openInputStream = contentResolver.openInputStream(uri3);
                                try {
                                    OutputStream openOutputStream = contentResolver.openOutputStream(avatarPhotoController2.mPreCropPictureUri);
                                    try {
                                        Streams.copy(openInputStream, openOutputStream);
                                        if (openOutputStream != null) {
                                            openOutputStream.close();
                                        }
                                        if (openInputStream != null) {
                                            openInputStream.close();
                                        }
                                        AvatarPhotoController$$ExternalSyntheticLambda2 avatarPhotoController$$ExternalSyntheticLambda2 = new AvatarPhotoController$$ExternalSyntheticLambda2(avatarPhotoController2, 1);
                                        if (z3) {
                                            if (ThreadUtils.sMainThreadHandler == null) {
                                                ThreadUtils.sMainThreadHandler = new Handler(Looper.getMainLooper());
                                            }
                                            ThreadUtils.sMainThreadHandler.postDelayed(avatarPhotoController$$ExternalSyntheticLambda2, 150L);
                                            return;
                                        }
                                        ThreadUtils.postOnMainThread(avatarPhotoController$$ExternalSyntheticLambda2);
                                    } finally {
                                    }
                                } finally {
                                }
                            } catch (IOException e2) {
                                Log.w("AvatarPhotoController", "Failed to copy photo", e2);
                            }
                        }
                    }).get();
                    return;
                } catch (InterruptedException | ExecutionException e2) {
                    Log.e("AvatarPhotoController", "Error performing copy-and-crop", e2);
                    return;
                }
            case 1003:
                AvatarPickerActivity avatarPickerActivity = ((AvatarPhotoController.AvatarUiImpl) avatarPhotoController.mAvatarUi).mActivity;
                avatarPickerActivity.getClass();
                Intent intent2 = new Intent();
                intent2.setData(uri);
                avatarPickerActivity.setResult(-1, intent2);
                avatarPickerActivity.finish();
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01e2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01fa A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v21, types: [androidx.recyclerview.widget.RecyclerView] */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onCreate(android.os.Bundle r11) {
        /*
            Method dump skipped, instructions count: 591
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.users.AvatarPickerActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            setResult(0);
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.mAdapter.getClass();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("awaiting_result", this.mWaitingForActivityResult);
        bundle.putInt("selected_position", this.mAdapter.mSelectedPosition);
        super.onSaveInstanceState(bundle);
    }

    public final void saveButtonSetEnabled(boolean z) {
        float f;
        Button button = this.mSaveButton;
        if (button != null) {
            button.setEnabled(z);
            Button button2 = this.mSaveButton;
            if (z) {
                f = 1.0f;
            } else {
                f = 0.4f;
            }
            button2.setAlpha(f);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void startActivityForResult(Intent intent, int i) {
        this.mWaitingForActivityResult = true;
        super.startActivityForResult(intent, i);
    }
}
