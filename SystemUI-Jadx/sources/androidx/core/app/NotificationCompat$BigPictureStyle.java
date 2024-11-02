package androidx.core.app;

import android.app.Notification;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.graphics.drawable.IconCompat;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NotificationCompat$BigPictureStyle extends NotificationCompat$Style {
    public IconCompat mBigLargeIcon;
    public boolean mBigLargeIconSet;
    public IconCompat mPictureIcon;
    public boolean mShowBigPictureWhenCollapsed;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Api16Impl {
        private Api16Impl() {
        }

        public static void setBigLargeIcon(Notification.BigPictureStyle bigPictureStyle, Bitmap bitmap) {
            bigPictureStyle.bigLargeIcon(bitmap);
        }

        public static void setSummaryText(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
            bigPictureStyle.setSummaryText(charSequence);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Api23Impl {
        private Api23Impl() {
        }

        public static void setBigLargeIcon(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
            bigPictureStyle.bigLargeIcon(icon);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Api31Impl {
        private Api31Impl() {
        }

        public static void setBigPicture(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
            bigPictureStyle.bigPicture(icon);
        }

        public static void setContentDescription(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
            bigPictureStyle.setContentDescription(charSequence);
        }

        public static void showBigPictureWhenCollapsed(Notification.BigPictureStyle bigPictureStyle, boolean z) {
            bigPictureStyle.showBigPictureWhenCollapsed(z);
        }
    }

    public NotificationCompat$BigPictureStyle() {
    }

    public static IconCompat asIconCompat(Parcelable parcelable) {
        if (parcelable != null) {
            if (parcelable instanceof Icon) {
                return IconCompat.createFromIcon((Icon) parcelable);
            }
            if (parcelable instanceof Bitmap) {
                return IconCompat.createWithBitmap((Bitmap) parcelable);
            }
            return null;
        }
        return null;
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void apply(NotificationCompatBuilder notificationCompatBuilder) {
        Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(notificationCompatBuilder.mBuilder).setBigContentTitle(this.mBigContentTitle);
        IconCompat iconCompat = this.mPictureIcon;
        if (iconCompat != null) {
            Api31Impl.setBigPicture(bigContentTitle, iconCompat.toIcon$1());
        }
        if (this.mBigLargeIconSet) {
            IconCompat iconCompat2 = this.mBigLargeIcon;
            if (iconCompat2 == null) {
                Api16Impl.setBigLargeIcon(bigContentTitle, null);
            } else {
                Api23Impl.setBigLargeIcon(bigContentTitle, iconCompat2.toIcon$1());
            }
        }
        if (this.mSummaryTextSet) {
            Api16Impl.setSummaryText(bigContentTitle, this.mSummaryText);
        }
        Api31Impl.showBigPictureWhenCollapsed(bigContentTitle, this.mShowBigPictureWhenCollapsed);
        Api31Impl.setContentDescription(bigContentTitle, null);
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void clearCompatExtraKeys(Bundle bundle) {
        super.clearCompatExtraKeys(bundle);
        bundle.remove("android.largeIcon.big");
        bundle.remove("android.picture");
        bundle.remove("android.pictureIcon");
        bundle.remove("android.showBigPictureWhenCollapsed");
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String getClassName() {
        return "androidx.core.app.NotificationCompat$BigPictureStyle";
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void restoreFromCompatExtras(Bundle bundle) {
        IconCompat asIconCompat;
        super.restoreFromCompatExtras(bundle);
        if (bundle.containsKey("android.largeIcon.big")) {
            this.mBigLargeIcon = asIconCompat(bundle.getParcelable("android.largeIcon.big"));
            this.mBigLargeIconSet = true;
        }
        Parcelable parcelable = bundle.getParcelable("android.picture");
        if (parcelable != null) {
            asIconCompat = asIconCompat(parcelable);
        } else {
            asIconCompat = asIconCompat(bundle.getParcelable("android.pictureIcon"));
        }
        this.mPictureIcon = asIconCompat;
        this.mShowBigPictureWhenCollapsed = bundle.getBoolean("android.showBigPictureWhenCollapsed");
    }

    public NotificationCompat$BigPictureStyle(NotificationCompat$Builder notificationCompat$Builder) {
        setBuilder(notificationCompat$Builder);
    }
}
