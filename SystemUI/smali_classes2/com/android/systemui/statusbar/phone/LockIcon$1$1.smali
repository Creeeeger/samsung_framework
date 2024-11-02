.class public final Lcom/android/systemui/statusbar/phone/LockIcon$1$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/phone/LockIcon$1;

.field public final synthetic val$animation:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field public final synthetic val$newState:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon$1;Landroid/graphics/drawable/AnimatedVectorDrawable;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1$1;->this$1:Lcom/android/systemui/statusbar/phone/LockIcon$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1$1;->val$animation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1$1;->val$newState:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1$1;->this$1:Lcom/android/systemui/statusbar/phone/LockIcon$1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1$1;->val$animation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1$1;->val$newState:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1$1;->this$1:Lcom/android/systemui/statusbar/phone/LockIcon$1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 18
    .line 19
    sget v1, Lcom/android/systemui/statusbar/phone/LockIcon;->$r8$clinit:I

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1$1;->val$newState:I

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1$1;->val$animation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p1, "LockIcon#Animation"

    .line 38
    .line 39
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1$1;->val$newState:I

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method
