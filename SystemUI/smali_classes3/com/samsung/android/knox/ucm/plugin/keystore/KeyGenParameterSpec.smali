.class public final Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    }
.end annotation


# instance fields
.field public final mAlgorithm:Ljava/lang/String;

.field public final mBlockModes:[Ljava/lang/String;

.field public final mDigests:[Ljava/lang/String;

.field public final mEcCurveName:Ljava/lang/String;

.field public final mIsManaged:Z

.field public final mIsRandomizedEncryptionRequired:Z

.field public final mKeySize:I

.field public final mKeystoreAlias:Ljava/lang/String;

.field public final mOptions:Landroid/os/Bundle;

.field public final mOwnerUid:I

.field public final mPurposes:I

.field public final mResourceId:I

.field public final mSignaturePaddings:[Ljava/lang/String;

.field public final mSourceUid:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIZIILjava/lang/String;IZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeySize:I

    .line 5
    iput p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSourceUid:I

    .line 6
    iput-boolean p4, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsManaged:Z

    .line 7
    iput p5, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mResourceId:I

    .line 8
    iput p6, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOwnerUid:I

    .line 9
    iput-object p7, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    .line 10
    iput p8, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mPurposes:I

    .line 11
    iput-boolean p9, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsRandomizedEncryptionRequired:Z

    .line 12
    iput-object p10, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mEcCurveName:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    .line 14
    iput-object p12, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    .line 15
    iput-object p13, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    .line 16
    iput-object p14, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOptions:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIZIILjava/lang/String;IZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p14}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;IIZIILjava/lang/String;IZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBlockModes()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDigests()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEcCurveName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mEcCurveName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKeySize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeySize:I

    .line 2
    .line 3
    return p0
.end method

.method public final getKeystoreAlias()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOptions()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOptions:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOwnerUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOwnerUid:I

    .line 2
    .line 3
    return p0
.end method

.method public final getPurposes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mPurposes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getResourceId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mResourceId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSignaturePaddings()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSourceUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSourceUid:I

    .line 2
    .line 3
    return p0
.end method

.method public final isManaged()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsManaged:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isRandomizedEncryptionRequired()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsRandomizedEncryptionRequired:Z

    .line 2
    .line 3
    return p0
.end method
