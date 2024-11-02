.class final enum Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslAppPickerSelectLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

.field public static final enum LAND:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

.field public static final enum LAND_HEADER_ONLY:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

.field public static final enum LAND_SELECTED:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

.field public static final enum PORT:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

.field public static final enum PORT_SELECTED:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;


# instance fields
.field public final layoutResId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x7f0d0291

    .line 5
    .line 6
    .line 7
    const-string v3, "LAND"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->LAND:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 13
    .line 14
    new-instance v1, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const v3, 0x7f0d0292

    .line 18
    .line 19
    .line 20
    const-string v4, "LAND_HEADER_ONLY"

    .line 21
    .line 22
    invoke-direct {v1, v4, v2, v3}, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->LAND_HEADER_ONLY:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 26
    .line 27
    new-instance v2, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    const v4, 0x7f0d0293

    .line 31
    .line 32
    .line 33
    const-string v5, "LAND_SELECTED"

    .line 34
    .line 35
    invoke-direct {v2, v5, v3, v4}, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->LAND_SELECTED:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 39
    .line 40
    new-instance v3, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 41
    .line 42
    const/4 v4, 0x3

    .line 43
    const v5, 0x7f0d0294

    .line 44
    .line 45
    .line 46
    const-string v6, "PORT"

    .line 47
    .line 48
    invoke-direct {v3, v6, v4, v5}, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v3, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->PORT:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 52
    .line 53
    new-instance v4, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 54
    .line 55
    const/4 v5, 0x4

    .line 56
    const v6, 0x7f0d0295

    .line 57
    .line 58
    .line 59
    const-string v7, "PORT_SELECTED"

    .line 60
    .line 61
    invoke-direct {v4, v7, v5, v6}, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    sput-object v4, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->PORT_SELECTED:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 65
    .line 66
    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->$VALUES:[Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 71
    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->layoutResId:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;
    .locals 1

    .line 1
    const-class v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;
    .locals 1

    .line 1
    sget-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->$VALUES:[Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 8
    .line 9
    return-object v0
.end method
