.class public final Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mAlgorithm:Ljava/lang/String;

.field public mBlockModes:[Ljava/lang/String;

.field public mDigests:[Ljava/lang/String;

.field public mEcCurveName:Ljava/lang/String;

.field public mIsManaged:Z

.field public mIsRandomizedEncryptionRequired:Z

.field public mKeySize:I

.field public mKeystoreAlias:Ljava/lang/String;

.field public mOptions:Landroid/os/Bundle;

.field public mOwnerUid:I

.field public mPurposes:I

.field public mResourceId:I

.field public mSignaturePaddings:[Ljava/lang/String;

.field public mSourceUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mSourceUid:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mIsManaged:Z

    .line 11
    .line 12
    iput p5, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mResourceId:I

    .line 13
    .line 14
    iput p6, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mOwnerUid:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v16, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    .line 8
    .line 9
    iget v3, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mSourceUid:I

    .line 10
    .line 11
    iget-boolean v4, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mIsManaged:Z

    .line 12
    .line 13
    iget v5, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mResourceId:I

    .line 14
    .line 15
    iget v6, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mOwnerUid:I

    .line 16
    .line 17
    iget-object v7, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 18
    .line 19
    iget v8, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    .line 20
    .line 21
    iget-boolean v9, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mIsRandomizedEncryptionRequired:Z

    .line 22
    .line 23
    iget-object v10, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mEcCurveName:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v11, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    .line 26
    .line 27
    iget-object v12, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    .line 28
    .line 29
    iget-object v13, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    .line 30
    .line 31
    iget-object v14, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mOptions:Landroid/os/Bundle;

    .line 32
    .line 33
    const/4 v15, 0x0

    .line 34
    move-object/from16 v0, v16

    .line 35
    .line 36
    invoke-direct/range {v0 .. v15}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;IIZIILjava/lang/String;IZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 37
    .line 38
    .line 39
    return-object v16
.end method

.method public final setAlgorithm(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setBlockModes([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setDigests([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setEcCurveName(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mEcCurveName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setOptions(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mOptions:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPurpose(I)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setRandomizedEncryptionRequired(Z)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mIsRandomizedEncryptionRequired:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final setSignaturePaddings([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
