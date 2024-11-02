.class public final Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# static fields
.field public static PRIVATE_RESOURCE:I = 0x0

.field public static SHARED_KEYCHAIN_RESOURCE:I = 0x1

.field public static SHARED_WIFI_RESOURCE:I = 0x2

.field public static UID_SELF:I = -0x1


# instance fields
.field public final mOptions:Landroid/os/Bundle;

.field public final mOwnerUid:I

.field public final mResourceId:I


# direct methods
.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mResourceId:I

    .line 5
    .line 6
    iput p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOwnerUid:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOptions:Landroid/os/Bundle;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getOptions()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOptions:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOwnerUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOwnerUid:I

    .line 2
    .line 3
    return p0
.end method

.method public final getResourceId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mResourceId:I

    .line 2
    .line 3
    return p0
.end method
