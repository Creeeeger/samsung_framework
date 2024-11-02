package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArrayMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR;
    public static final String[] PREFERRED_BITMAP_ORDER;
    public static final String[] PREFERRED_DESCRIPTION_ORDER;
    public static final String[] PREFERRED_URI_ORDER;
    public final Bundle mBundle;
    public MediaDescriptionCompat mDescription;

    static {
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put("android.media.metadata.TITLE", 1);
        arrayMap.put("android.media.metadata.ARTIST", 1);
        arrayMap.put("android.media.metadata.DURATION", 0);
        arrayMap.put("android.media.metadata.ALBUM", 1);
        arrayMap.put("android.media.metadata.AUTHOR", 1);
        arrayMap.put("android.media.metadata.WRITER", 1);
        arrayMap.put("android.media.metadata.COMPOSER", 1);
        arrayMap.put("android.media.metadata.COMPILATION", 1);
        arrayMap.put("android.media.metadata.DATE", 1);
        arrayMap.put("android.media.metadata.YEAR", 0);
        arrayMap.put("android.media.metadata.GENRE", 1);
        arrayMap.put("android.media.metadata.TRACK_NUMBER", 0);
        arrayMap.put("android.media.metadata.NUM_TRACKS", 0);
        arrayMap.put("android.media.metadata.DISC_NUMBER", 0);
        arrayMap.put("android.media.metadata.ALBUM_ARTIST", 1);
        arrayMap.put("android.media.metadata.ART", 2);
        arrayMap.put("android.media.metadata.ART_URI", 1);
        arrayMap.put("android.media.metadata.ALBUM_ART", 2);
        arrayMap.put("android.media.metadata.ALBUM_ART_URI", 1);
        arrayMap.put("android.media.metadata.USER_RATING", 3);
        arrayMap.put("android.media.metadata.RATING", 3);
        arrayMap.put("android.media.metadata.DISPLAY_TITLE", 1);
        arrayMap.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        arrayMap.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        arrayMap.put("android.media.metadata.DISPLAY_ICON", 2);
        arrayMap.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        arrayMap.put("android.media.metadata.MEDIA_ID", 1);
        arrayMap.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        arrayMap.put("android.media.metadata.MEDIA_URI", 1);
        arrayMap.put("android.media.metadata.ADVERTISEMENT", 0);
        arrayMap.put("android.media.metadata.DOWNLOAD_STATUS", 0);
        PREFERRED_DESCRIPTION_ORDER = new String[]{"android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER"};
        PREFERRED_BITMAP_ORDER = new String[]{"android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART"};
        PREFERRED_URI_ORDER = new String[]{"android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI"};
        CREATOR = new Parcelable.Creator() { // from class: android.support.v4.media.MediaMetadataCompat.1
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new MediaMetadataCompat(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new MediaMetadataCompat[i];
            }
        };
    }

    public MediaMetadataCompat(Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        this.mBundle = bundle2;
        MediaSessionCompat.ensureClassLoader(bundle2);
    }

    public static MediaMetadataCompat fromMediaMetadata(Object obj) {
        if (obj != null) {
            Parcel obtain = Parcel.obtain();
            ((MediaMetadata) obj).writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            MediaMetadataCompat createFromParcel = CREATOR.createFromParcel(obtain);
            obtain.recycle();
            createFromParcel.getClass();
            return createFromParcel;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final MediaDescriptionCompat getDescription() {
        String str;
        Bitmap bitmap;
        Uri uri;
        String str2;
        String str3;
        MediaDescriptionCompat mediaDescriptionCompat = this.mDescription;
        if (mediaDescriptionCompat != null) {
            return mediaDescriptionCompat;
        }
        CharSequence charSequence = this.mBundle.getCharSequence("android.media.metadata.MEDIA_ID");
        Uri uri2 = null;
        if (charSequence != null) {
            str = charSequence.toString();
        } else {
            str = null;
        }
        CharSequence[] charSequenceArr = new CharSequence[3];
        CharSequence charSequence2 = this.mBundle.getCharSequence("android.media.metadata.DISPLAY_TITLE");
        if (!TextUtils.isEmpty(charSequence2)) {
            charSequenceArr[0] = charSequence2;
            charSequenceArr[1] = this.mBundle.getCharSequence("android.media.metadata.DISPLAY_SUBTITLE");
            charSequenceArr[2] = this.mBundle.getCharSequence("android.media.metadata.DISPLAY_DESCRIPTION");
        } else {
            int i = 0;
            int i2 = 0;
            while (i < 3) {
                String[] strArr = PREFERRED_DESCRIPTION_ORDER;
                if (i2 >= strArr.length) {
                    break;
                }
                int i3 = i2 + 1;
                CharSequence charSequence3 = this.mBundle.getCharSequence(strArr[i2]);
                if (!TextUtils.isEmpty(charSequence3)) {
                    charSequenceArr[i] = charSequence3;
                    i++;
                }
                i2 = i3;
            }
        }
        int i4 = 0;
        while (true) {
            String[] strArr2 = PREFERRED_BITMAP_ORDER;
            if (i4 < strArr2.length) {
                try {
                    bitmap = (Bitmap) this.mBundle.getParcelable(strArr2[i4]);
                } catch (Exception e) {
                    Log.w("MediaMetadata", "Failed to retrieve a key as Bitmap.", e);
                    bitmap = null;
                }
                if (bitmap != null) {
                    break;
                }
                i4++;
            } else {
                bitmap = null;
                break;
            }
        }
        int i5 = 0;
        while (true) {
            String[] strArr3 = PREFERRED_URI_ORDER;
            if (i5 < strArr3.length) {
                CharSequence charSequence4 = this.mBundle.getCharSequence(strArr3[i5]);
                if (charSequence4 != null) {
                    str3 = charSequence4.toString();
                } else {
                    str3 = null;
                }
                if (!TextUtils.isEmpty(str3)) {
                    uri = Uri.parse(str3);
                    break;
                }
                i5++;
            } else {
                uri = null;
                break;
            }
        }
        CharSequence charSequence5 = this.mBundle.getCharSequence("android.media.metadata.MEDIA_URI");
        if (charSequence5 != null) {
            str2 = charSequence5.toString();
        } else {
            str2 = null;
        }
        if (!TextUtils.isEmpty(str2)) {
            uri2 = Uri.parse(str2);
        }
        MediaDescriptionCompat.Builder builder = new MediaDescriptionCompat.Builder();
        builder.mMediaId = str;
        builder.mTitle = charSequenceArr[0];
        builder.mSubtitle = charSequenceArr[1];
        builder.mDescription = charSequenceArr[2];
        builder.mIcon = bitmap;
        builder.mIconUri = uri;
        builder.mMediaUri = uri2;
        Bundle bundle = new Bundle();
        if (this.mBundle.containsKey("android.media.metadata.BT_FOLDER_TYPE")) {
            bundle.putLong("android.media.extra.BT_FOLDER_TYPE", this.mBundle.getLong("android.media.metadata.BT_FOLDER_TYPE", 0L));
        }
        if (this.mBundle.containsKey("android.media.metadata.DOWNLOAD_STATUS")) {
            bundle.putLong("android.media.extra.DOWNLOAD_STATUS", this.mBundle.getLong("android.media.metadata.DOWNLOAD_STATUS", 0L));
        }
        if (!bundle.isEmpty()) {
            builder.mExtras = bundle;
        }
        MediaDescriptionCompat mediaDescriptionCompat2 = new MediaDescriptionCompat(builder.mMediaId, builder.mTitle, builder.mSubtitle, builder.mDescription, builder.mIcon, builder.mIconUri, builder.mExtras, builder.mMediaUri);
        this.mDescription = mediaDescriptionCompat2;
        return mediaDescriptionCompat2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.mBundle);
    }

    public MediaMetadataCompat(Parcel parcel) {
        this.mBundle = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }
}
