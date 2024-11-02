.class public abstract Lcom/samsung/android/knox/lockscreen/LSOItemData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/lockscreen/LSOItemData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FLOAT_VALUE:F = 0.0f

.field public static final DEFAULT_INT_VALUE:I = -0x1

.field public static final DEFAULT_WH_VALUE:I = -0x63

.field public static final LSO_FIELD_ATTRIBUTES:I = 0x40

.field public static final LSO_FIELD_BG_COLOR:I = 0x10

.field public static final LSO_FIELD_GRAVITY:I = 0x20

.field public static final LSO_FIELD_ITEMID:I = 0x1

.field public static final LSO_FIELD_LAST:I = 0x80

.field public static final LSO_FIELD_PARAM_HEIGHT:I = 0x4

.field public static final LSO_FIELD_PARAM_WEIGHT:I = 0x8

.field public static final LSO_FIELD_PARAM_WIDTH:I = 0x2

.field public static final TAG:Ljava/lang/String; = "LSO_LSOItemData"


# instance fields
.field public attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

.field public bg_color:I

.field public gravity:I

.field public height:I

.field public itemId:Ljava/lang/String;

.field public modifiedFields:I

.field public pfd:Landroid/os/ParcelFileDescriptor;

.field public type:B

.field public weight:F

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemData$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    .line 3
    iput-byte p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    .line 4
    new-instance p1, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-direct {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    const/16 p1, -0x63

    .line 5
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    .line 6
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    .line 9
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    return-void
.end method

.method public constructor <init>(BLandroid/os/Parcel;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    .line 12
    iput-byte p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    .line 13
    new-instance p1, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-direct {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 14
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final closeFileDescriptor()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    :catch_0
    :cond_0
    instance-of v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getBgColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getGravity()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    .line 2
    .line 3
    return p0
.end method

.method public final getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    .line 2
    .line 3
    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    .line 2
    .line 3
    return p0
.end method

.method public final getUpdatedFields()[I
    .locals 6

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-lez v0, :cond_1

    .line 10
    .line 11
    add-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    add-int/lit8 v3, v0, -0x1

    .line 14
    .line 15
    and-int/2addr v0, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-array v0, v2, [I

    .line 18
    .line 19
    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    .line 20
    .line 21
    move v3, v1

    .line 22
    :goto_1
    const/16 v4, 0x1f

    .line 23
    .line 24
    if-gt v1, v4, :cond_3

    .line 25
    .line 26
    if-lez p0, :cond_3

    .line 27
    .line 28
    if-ge v3, v2, :cond_3

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    shl-int/2addr v4, v1

    .line 32
    and-int v5, p0, v4

    .line 33
    .line 34
    if-ne v5, v4, :cond_2

    .line 35
    .line 36
    add-int/lit8 v5, v3, 0x1

    .line 37
    .line 38
    aput v4, v0, v3

    .line 39
    .line 40
    not-int v3, v4

    .line 41
    and-int/2addr p0, v3

    .line 42
    move v3, v5

    .line 43
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    return-object v0
.end method

.method public final getWeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    .line 2
    .line 3
    return p0
.end method

.method public final getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    .line 2
    .line 3
    return p0
.end method

.method public final isFieldUpdated(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-ne p0, p1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final openFileDescriptor()V
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptorInternal(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, p0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptor()V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    instance-of v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    move-object v0, p0

    .line 35
    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->imagePath:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptorInternal(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "android:src"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptorInternal(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    return-void
.end method

.method public final openFileDescriptorInternal(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "LSO_LSOItemData"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/high16 v2, 0x10000000

    .line 11
    .line 12
    :try_start_0
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    const-string v1, "openFileDescriptorInternal() error occurs - "

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_1
    const-string p0, "openFileDescriptorInternal() file not found - "

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    return-void
.end method

.method public final readBoolFromParcel(Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 p1, 0x1

    .line 13
    if-ne p1, p0, :cond_0

    .line 14
    .line 15
    move p2, p1

    .line 16
    :cond_0
    return p2
.end method

.method public final readByteFromParcel(Landroid/os/Parcel;I)B
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final readFloatFromParcel(Landroid/os/Parcel;I)F
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final readFloatFromParcel(Landroid/os/Parcel;IF)F
    .locals 0

    .line 3
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    return p0

    :cond_0
    return p3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-byte v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    const/16 v1, -0x63

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    .line 35
    .line 36
    const/16 v0, 0x8

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFloatFromParcel(Landroid/os/Parcel;IF)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    .line 44
    .line 45
    const/16 v0, 0x10

    .line 46
    .line 47
    const/4 v1, -0x1

    .line 48
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    .line 53
    .line 54
    const/16 v0, 0x20

    .line 55
    .line 56
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    .line 61
    .line 62
    const/16 v0, 0x40

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 75
    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 83
    .line 84
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 95
    .line 96
    :goto_0
    return-void
.end method

.method public final readIntFromParcel(Landroid/os/Parcel;II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    return p3
.end method

.method public final readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final removeFieldFlag(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    .line 2
    .line 3
    not-int p1, p1

    .line 4
    and-int/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    .line 6
    .line 7
    return-void
.end method

.method public final resetUpdatedFields()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    .line 3
    .line 4
    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 p1, 0x40

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/Byte;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const/16 p1, 0x40

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const/16 p1, 0x40

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/16 p1, 0x40

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 p1, 0x40

    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 p1, 0x40

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x40

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public final setAttribute(Ljava/lang/String;[B)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;[B)V

    const/16 p1, 0x40

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public final setAttrs(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->putAll(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V

    .line 12
    .line 13
    .line 14
    const/16 p1, 0x40

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setBgColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    .line 2
    .line 3
    const/16 p1, 0x10

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setDimension(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWidth(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setHeight(I)V

    return-void
.end method

.method public final setDimension(IIF)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWidth(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setHeight(I)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    return-void
.end method

.method public final setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    .line 2
    .line 3
    const/16 p1, 0x20

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    .line 2
    .line 3
    const/4 p1, 0x4

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setWeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    .line 2
    .line 3
    const/16 p1, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ItemId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Height:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Weight:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BG_Color:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Gravity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attributes:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 8
    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    .line 9
    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " "

    .line 11
    invoke-static {p1, p3, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final updateFieldFlag(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    .line 5
    .line 6
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2
    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 4
    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    .line 5
    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    .line 6
    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;IF)V

    const/16 v0, 0x10

    .line 7
    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    const/16 v0, 0x20

    .line 8
    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    const/16 v0, 0x40

    .line 9
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 14
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;IB)V
    .locals 0

    .line 17
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeByte(B)V

    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;IF)V
    .locals 0

    .line 21
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;II)V
    .locals 0

    .line 19
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;IZ)V
    .locals 0

    .line 15
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    int-to-byte p0, p3

    .line 16
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    :cond_0
    return-void
.end method
