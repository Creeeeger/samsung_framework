.class public final Lcom/android/systemui/qs/SecDarkModeEasel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAssetSeq:I

.field public final mPictureSubject:Lcom/android/systemui/qs/SecDarkModeEasel$PictureSubject;

.field public mThemeSeq:I

.field public mUIMode:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecDarkModeEasel$PictureSubject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/SecDarkModeEasel;->mPictureSubject:Lcom/android/systemui/qs/SecDarkModeEasel$PictureSubject;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updateColors(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/SecDarkModeEasel;->mThemeSeq:I

    .line 2
    .line 3
    iget v1, p1, Landroid/content/res/Configuration;->themeSeq:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/qs/SecDarkModeEasel;->mAssetSeq:I

    .line 8
    .line 9
    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/android/systemui/qs/SecDarkModeEasel;->mUIMode:I

    .line 14
    .line 15
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 16
    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    :cond_0
    iput v1, p0, Lcom/android/systemui/qs/SecDarkModeEasel;->mThemeSeq:I

    .line 20
    .line 21
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    .line 22
    .line 23
    iput v0, p0, Lcom/android/systemui/qs/SecDarkModeEasel;->mAssetSeq:I

    .line 24
    .line 25
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 26
    .line 27
    iput p1, p0, Lcom/android/systemui/qs/SecDarkModeEasel;->mUIMode:I

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/qs/SecDarkModeEasel;->mPictureSubject:Lcom/android/systemui/qs/SecDarkModeEasel$PictureSubject;

    .line 30
    .line 31
    invoke-interface {p0}, Lcom/android/systemui/qs/SecDarkModeEasel$PictureSubject;->drawDarkModelPicture()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method
