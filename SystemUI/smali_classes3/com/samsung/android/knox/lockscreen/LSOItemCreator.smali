.class public final Lcom/samsung/android/knox/lockscreen/LSOItemCreator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final LSO_ITEM_TYPE_CONTAINER:B = 0x4t

.field public static final LSO_ITEM_TYPE_IMAGE:B = 0x3t

.field public static final LSO_ITEM_TYPE_NONE:B = 0x0t

.field public static final LSO_ITEM_TYPE_SPACE:B = 0x1t

.field public static final LSO_ITEM_TYPE_TEXT:B = 0x2t

.field public static final LSO_ITEM_TYPE_WIDGET:B = 0x5t

.field public static final TAG:Ljava/lang/String; = "LSO_LSOItemCreator"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItem(B)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string v0, "Unknown ItemType: "

    const-string v1, "LSO_LSOItemCreator"

    .line 1
    invoke-static {v0, p0, v1}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;-><init>()V

    goto :goto_0

    .line 3
    :cond_1
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    goto :goto_0

    .line 4
    :cond_2
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;-><init>()V

    goto :goto_0

    .line 5
    :cond_3
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>()V

    goto :goto_0

    .line 6
    :cond_4
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static createItem(BLandroid/os/Parcel;)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p1, "Unknown ItemType: "

    const-string v0, "LSO_LSOItemCreator"

    .line 37
    invoke-static {p1, p0, v0}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 39
    :cond_1
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 40
    :cond_2
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 41
    :cond_3
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 42
    :cond_4
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(Landroid/os/Parcel;)V

    :goto_0
    return-object p0
.end method
