.class public final Lcom/samsung/android/knox/custom/ShortcutItem;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/custom/ShortcutItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mCellX:I

.field public final mCellX_KEY:Ljava/lang/String;

.field public mCellY:I

.field public final mCellY_KEY:Ljava/lang/String;

.field public mColour:I

.field public final mColour_KEY:Ljava/lang/String;

.field public mFolderPosition:I

.field public final mFolderPosition_KEY:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/BitmapDrawable;

.field public final mIcon_KEY:Ljava/lang/String;

.field public mIntent:Landroid/content/Intent;

.field public final mIntent_KEY:Ljava/lang/String;

.field public mMoreItems:I

.field public final mMoreItems_KEY:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public final mName_KEY:Ljava/lang/String;

.field public mParent:Ljava/lang/String;

.field public final mParent_KEY:Ljava/lang/String;

.field public mShortcutType:I

.field public final mShortcutType_KEY:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/custom/ShortcutItem$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/custom/ShortcutItem$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/custom/ShortcutItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    .line 47
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const-string v0, "SHORTCUT"

    .line 48
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    .line 49
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const-string v0, "FOLDER_POS"

    .line 50
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    .line 51
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    .line 52
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v1, "CELLX"

    .line 54
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    .line 55
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v1, "CELLY"

    .line 56
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    .line 57
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v0, "COLOUR"

    .line 58
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v0, "ICON"

    .line 60
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    .line 61
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    .line 62
    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    .line 63
    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 65
    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    .line 66
    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    .line 67
    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;III)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    .line 25
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const-string v0, "SHORTCUT"

    .line 26
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    .line 27
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v1, "FOLDER_POS"

    .line 29
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v1, "INTENT"

    .line 30
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v1, "PARENT"

    .line 31
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    const-string v1, "CELLX"

    .line 32
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    const-string v1, "CELLY"

    .line 33
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v0, "COLOUR"

    .line 35
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v0, "ICON"

    .line 37
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    .line 38
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    .line 39
    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    .line 40
    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 42
    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    .line 44
    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    .line 45
    iput p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IIIILandroid/graphics/drawable/BitmapDrawable;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    .line 3
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const-string v0, "SHORTCUT"

    .line 4
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    .line 5
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const-string v0, "FOLDER_POS"

    .line 6
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    .line 7
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    .line 8
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    const-string v0, "CELLX"

    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    const-string v0, "CELLY"

    .line 10
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    const-string v0, "COLOUR"

    .line 11
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const-string v0, "ICON"

    .line 12
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    .line 13
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    .line 14
    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    .line 15
    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 17
    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    .line 18
    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    .line 19
    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    .line 20
    iput p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    .line 21
    iput p8, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    .line 22
    iput-object p9, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 23
    iput p10, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IILandroid/graphics/drawable/BitmapDrawable;I)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    .line 69
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const-string v0, "SHORTCUT"

    .line 70
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    .line 71
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v1, "FOLDER_POS"

    .line 73
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v1, "INTENT"

    .line 74
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v1, "PARENT"

    .line 75
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    const-string v1, "CELLX"

    .line 76
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    const-string v1, "CELLY"

    .line 77
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    .line 78
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v0, "COLOUR"

    .line 79
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const-string v0, "ICON"

    .line 80
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    .line 81
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    .line 82
    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    .line 83
    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 85
    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    .line 86
    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    .line 87
    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    .line 88
    iput-object p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 89
    iput p8, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;I)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    .line 91
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const-string v0, "SHORTCUT"

    .line 92
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    .line 93
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const-string v0, "FOLDER_POS"

    .line 94
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    .line 95
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    .line 96
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v1, "CELLX"

    .line 98
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    .line 99
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v1, "CELLY"

    .line 100
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    .line 101
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v0, "COLOUR"

    .line 102
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const-string v0, "ICON"

    .line 103
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    .line 104
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    .line 105
    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    .line 106
    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 108
    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    .line 109
    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    .line 110
    iput-object p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 111
    iput p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    .line 113
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const-string v0, "SHORTCUT"

    .line 114
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    .line 115
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v0, "FOLDER_POS"

    .line 117
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    .line 118
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    .line 119
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    const-string v0, "CELLX"

    .line 120
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    const-string v0, "CELLY"

    .line 121
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    const-string v0, "COLOUR"

    .line 122
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v0, "ICON"

    .line 124
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    .line 125
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    .line 126
    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    .line 127
    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    .line 129
    iput p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    .line 130
    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    .line 131
    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    .line 132
    iput p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    .line 134
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 135
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    const-string v1, "SHORTCUT"

    .line 136
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v1, "NAME"

    .line 137
    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    .line 138
    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v2, "FOLDER_POS"

    .line 139
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v2, "INTENT"

    .line 140
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v2, "PARENT"

    .line 141
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    .line 142
    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v2, "CELLX"

    .line 143
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    .line 144
    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v2, "CELLY"

    .line 145
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    .line 146
    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v2, "COLOUR"

    .line 147
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    .line 148
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v2, "ICON"

    .line 149
    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    .line 150
    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    const-string v0, "MORE"

    .line 151
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "intent"

    .line 153
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    new-array v2, v0, [B

    .line 164
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 165
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/ShortcutItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getCellX()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    .line 2
    .line 3
    return p0
.end method

.method public final getCellY()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    .line 2
    .line 3
    return p0
.end method

.method public final getColour()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFolderPosition()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    .line 2
    .line 3
    return p0
.end method

.method public final getIcon()Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIconArray()[B
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 18
    .line 19
    const/16 v2, 0x5a

    .line 20
    .line 21
    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMoreItems()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    .line 2
    .line 3
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getParent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getShortcutType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "descr:0 shortcutType:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " name:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " parent:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " intent:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    new-instance p2, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "intent"

    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 9
    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ShortcutItem;->getIconArray()[B

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-eqz p0, :cond_0

    .line 61
    .line 62
    array-length p2, p0

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 p0, 0x0

    .line 71
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method
