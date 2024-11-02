.class public final Lcom/android/systemui/qs/QSDetailItems$Item;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final icon2:I

.field public iconResId:I

.field public iconVisibility:Z

.field public isActive:Z

.field public isClickable:Z

.field public isDisabled:Z

.field public isInProgress:Z

.field public itemPaddingAboveBelow:I

.field public line1:Ljava/lang/CharSequence;

.field public line1textSize:F

.field public line2:Ljava/lang/CharSequence;

.field public line2textSize:F

.field public overlay:Landroid/graphics/drawable/Drawable;

.field public tag:Ljava/lang/Object;

.field public updateIconSize:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->updateIconSize:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->iconVisibility:Z

    .line 13
    .line 14
    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->itemPaddingAboveBelow:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->line1textSize:F

    .line 18
    .line 19
    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->line2textSize:F

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    .line 23
    .line 24
    return-void
.end method
