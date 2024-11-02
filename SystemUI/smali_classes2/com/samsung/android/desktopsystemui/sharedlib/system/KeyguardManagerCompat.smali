.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/KeyguardManagerCompat;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final mKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "keyguard"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/app/KeyguardManager;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/KeyguardManagerCompat;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public isDeviceLocked(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/KeyguardManagerCompat;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
