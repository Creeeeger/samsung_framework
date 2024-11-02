.class public final Lcom/android/systemui/people/PeopleStoryIconFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mAccentColor:I

.field public final mContext:Landroid/content/Context;

.field public final mDensity:F

.field public final mIconBitmapSize:I

.field public final mIconSize:F

.field public final mImportantConversationColor:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/util/IconDrawableFactory;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Landroid/view/ContextThemeWrapper;

    .line 5
    .line 6
    const v0, 0x10302e3

    .line 7
    .line 8
    .line 9
    invoke-direct {p3, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    iput-object p3, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    int-to-float p1, p4

    .line 15
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    .line 24
    .line 25
    mul-float/2addr p4, p1

    .line 26
    float-to-int p4, p4

    .line 27
    iput p4, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconBitmapSize:I

    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    .line 38
    .line 39
    iput p4, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mDensity:F

    .line 40
    .line 41
    mul-float/2addr p4, p1

    .line 42
    iput p4, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconSize:F

    .line 43
    .line 44
    iput-object p2, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 45
    .line 46
    const p1, 0x7f06017f

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, p1}, Landroid/content/Context;->getColor(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mImportantConversationColor:I

    .line 54
    .line 55
    const p1, 0x1120027

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p3}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iput p1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mAccentColor:I

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method
