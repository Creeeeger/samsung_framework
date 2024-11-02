.class final enum Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeslSearchViewStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

.field public static final enum DARK_WITHOUT_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

.field public static final enum DARK_WITH_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

.field public static final enum LIGHT_WITHOUT_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

.field public static final enum LIGHT_WITH_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;


# instance fields
.field private final mHintTextColorRes:I

.field private final mIconColorRes:I

.field private final mTextColorRes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v6, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 2
    .line 3
    const-string v1, "LIGHT_WITH_BACKGROUND"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const v3, 0x7f0606df

    .line 7
    .line 8
    .line 9
    const v4, 0x7f0606db

    .line 10
    .line 11
    .line 12
    const v5, 0x7f0606dd

    .line 13
    .line 14
    .line 15
    move-object v0, v6

    .line 16
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;-><init>(Ljava/lang/String;IIII)V

    .line 17
    .line 18
    .line 19
    sput-object v6, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->LIGHT_WITH_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 20
    .line 21
    new-instance v0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 22
    .line 23
    const-string v8, "LIGHT_WITHOUT_BACKGROUND"

    .line 24
    .line 25
    const/4 v9, 0x1

    .line 26
    const v10, 0x7f0606e4

    .line 27
    .line 28
    .line 29
    const v11, 0x7f0606e0

    .line 30
    .line 31
    .line 32
    const v12, 0x7f0606e2

    .line 33
    .line 34
    .line 35
    move-object v7, v0

    .line 36
    invoke-direct/range {v7 .. v12}, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;-><init>(Ljava/lang/String;IIII)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->LIGHT_WITHOUT_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 40
    .line 41
    new-instance v1, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 42
    .line 43
    const-string v14, "DARK_WITH_BACKGROUND"

    .line 44
    .line 45
    const/4 v15, 0x2

    .line 46
    const v16, 0x7f0606de

    .line 47
    .line 48
    .line 49
    const v17, 0x7f0606da

    .line 50
    .line 51
    .line 52
    const v18, 0x7f0606dc

    .line 53
    .line 54
    .line 55
    move-object v13, v1

    .line 56
    invoke-direct/range {v13 .. v18}, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;-><init>(Ljava/lang/String;IIII)V

    .line 57
    .line 58
    .line 59
    sput-object v1, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->DARK_WITH_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 60
    .line 61
    new-instance v2, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 62
    .line 63
    const-string v8, "DARK_WITHOUT_BACKGROUND"

    .line 64
    .line 65
    const/4 v9, 0x3

    .line 66
    const v10, 0x7f0606e5

    .line 67
    .line 68
    .line 69
    const v11, 0x7f0606e1

    .line 70
    .line 71
    .line 72
    const v12, 0x7f0606e3

    .line 73
    .line 74
    .line 75
    move-object v7, v2

    .line 76
    invoke-direct/range {v7 .. v12}, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;-><init>(Ljava/lang/String;IIII)V

    .line 77
    .line 78
    .line 79
    sput-object v2, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->DARK_WITHOUT_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 80
    .line 81
    filled-new-array {v6, v0, v1, v2}, [Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->$VALUES:[Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 86
    .line 87
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->mTextColorRes:I

    .line 5
    .line 6
    iput p4, p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->mHintTextColorRes:I

    .line 7
    .line 8
    iput p5, p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->mIconColorRes:I

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;
    .locals 1

    .line 1
    const-class v0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->$VALUES:[Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final apply(Landroid/content/res/Resources;Landroidx/appcompat/widget/SearchView$SearchAutoComplete;Ljava/util/List;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[SeslSearchViewStyle] apply "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SearchView"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget v0, p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->mTextColorRes:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->mHintTextColorRes:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-eqz p3, :cond_0

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Landroid/widget/ImageView;

    .line 53
    .line 54
    iget v0, p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->mIconColorRes:I

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
