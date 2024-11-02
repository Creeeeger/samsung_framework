package com.android.settingslib.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import android.util.LruCache;
import android.util.Pair;
import com.android.settingslib.utils.ThreadUtils;
import com.android.systemui.R;
import java.io.IOException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class CachedBluetoothDevice$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CachedBluetoothDevice f$0;

    public /* synthetic */ CachedBluetoothDevice$$ExternalSyntheticLambda0(CachedBluetoothDevice cachedBluetoothDevice, int i) {
        this.$r8$classId = i;
        this.f$0 = cachedBluetoothDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Uri parse;
        Pair pair;
        Bitmap bitmap;
        switch (this.$r8$classId) {
            case 0:
                CachedBluetoothDevice cachedBluetoothDevice = this.f$0;
                int i = 1;
                if (BluetoothUtils.isAdvancedDetailsHeader(cachedBluetoothDevice.mDevice)) {
                    String stringMetaData = BluetoothUtils.getStringMetaData(cachedBluetoothDevice.mDevice, 5);
                    Uri uri = null;
                    if (stringMetaData == null) {
                        parse = null;
                    } else {
                        parse = Uri.parse(stringMetaData);
                    }
                    if (parse != null && cachedBluetoothDevice.mDrawableCache.get(parse.toString()) == null) {
                        LruCache<String, BitmapDrawable> lruCache = cachedBluetoothDevice.mDrawableCache;
                        String uri2 = parse.toString();
                        Context context = cachedBluetoothDevice.mContext;
                        Pair btClassDrawableWithDescription = BluetoothUtils.getBtClassDrawableWithDescription(context, cachedBluetoothDevice);
                        BluetoothDevice bluetoothDevice = cachedBluetoothDevice.mDevice;
                        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.bt_nearby_icon_size);
                        Resources resources = context.getResources();
                        if (BluetoothUtils.isAdvancedDetailsHeader(bluetoothDevice)) {
                            String stringMetaData2 = BluetoothUtils.getStringMetaData(bluetoothDevice, 5);
                            if (stringMetaData2 != null) {
                                uri = Uri.parse(stringMetaData2);
                            }
                            if (uri != null) {
                                try {
                                    context.getContentResolver().takePersistableUriPermission(uri, 1);
                                } catch (SecurityException e) {
                                    Log.e("BluetoothUtils", "Failed to take persistable permission for: " + uri, e);
                                }
                                try {
                                    bitmap = MediaStore.Images.Media.getBitmap(context.getContentResolver(), uri);
                                } catch (IOException e2) {
                                    Log.e("BluetoothUtils", "Failed to get drawable for: " + uri, e2);
                                } catch (SecurityException e3) {
                                    Log.e("BluetoothUtils", "Failed to get permission for: " + uri, e3);
                                }
                                if (bitmap != null) {
                                    Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, dimensionPixelSize, dimensionPixelSize, false);
                                    bitmap.recycle();
                                    pair = new Pair(new BitmapDrawable(resources, createScaledBitmap), (String) btClassDrawableWithDescription.second);
                                    lruCache.put(uri2, (BitmapDrawable) pair.first);
                                }
                            }
                        }
                        pair = new Pair((Drawable) btClassDrawableWithDescription.first, (String) btClassDrawableWithDescription.second);
                        lruCache.put(uri2, (BitmapDrawable) pair.first);
                    }
                }
                ThreadUtils.postOnMainThread(new CachedBluetoothDevice$$ExternalSyntheticLambda0(cachedBluetoothDevice, i));
                return;
            default:
                this.f$0.dispatchAttributesChanged();
                return;
        }
    }
}
