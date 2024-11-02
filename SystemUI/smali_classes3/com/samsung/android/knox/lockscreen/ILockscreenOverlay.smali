.class public interface abstract Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;,
        Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.lockscreen.ILockscreenOverlay"


# virtual methods
.method public abstract canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z
.end method

.method public abstract getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
.end method

.method public abstract getPreferences(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
.end method

.method public abstract isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z
.end method

.method public abstract resetData(Lcom/samsung/android/knox/ContextInfo;I)V
.end method

.method public abstract resetWallpaper(Lcom/samsung/android/knox/ContextInfo;)V
.end method

.method public abstract setData(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I
.end method

.method public abstract setPreferences(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)I
.end method

.method public abstract setWallpaper(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
.end method
