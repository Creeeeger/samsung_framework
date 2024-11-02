.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;
.super Landroid/os/AsyncTask;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public final synthetic this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

.field public final synthetic val$sequence:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->val$sequence:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mApkResources:Landroid/content/res/Resources;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mImageSetIds:[I

    .line 12
    .line 13
    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->val$sequence:I

    .line 14
    .line 15
    aget p1, p1, v1

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mUsed:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    .line 36
    .line 37
    iget-object v0, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    iput-object v1, v0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mUsed:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 47
    .line 48
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->val$sequence:I

    .line 49
    .line 50
    iput p0, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->preSequence:I

    .line 51
    .line 52
    iget-object p1, v0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method
