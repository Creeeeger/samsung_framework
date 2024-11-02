.class public Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/KeyguardConstants$UpdateType;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/KeyguardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/KeyguardConstants$UpdateType$TrustStateKey;,
        Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/KeyguardConstants$UpdateType$ScreenStateKey;,
        Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/KeyguardConstants$UpdateType$BouncerTextKey;
    }
.end annotation


# static fields
.field public static final BOUNCER_TEXT:I = 0x2

.field public static final SCREEN_STATE:I = 0x3

.field public static final TRUST_STATE:I = 0x4

.field public static final UNLOCK_FAIL:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
