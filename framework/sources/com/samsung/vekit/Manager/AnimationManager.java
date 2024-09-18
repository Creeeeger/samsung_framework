package com.samsung.vekit.Manager;

import android.util.Log;
import com.samsung.vekit.Animation.AlphaAnimation;
import com.samsung.vekit.Animation.Animation;
import com.samsung.vekit.Animation.DissolveAnimation;
import com.samsung.vekit.Animation.FadeAnimation;
import com.samsung.vekit.Animation.FilterAnimation;
import com.samsung.vekit.Animation.SlideAnimation;
import com.samsung.vekit.Animation.ToneAnimation;
import com.samsung.vekit.Animation.TransformAnimation;
import com.samsung.vekit.Animation.TransitionAnimation;
import com.samsung.vekit.Animation.WipeAnimation;
import com.samsung.vekit.Common.Type.AnimationType;
import com.samsung.vekit.Common.Type.ManagerType;
import com.samsung.vekit.Common.Type.TransitionType;
import com.samsung.vekit.Common.VEContext;
import java.util.ArrayList;

/* loaded from: classes6.dex */
public class AnimationManager extends Manager<Animation<?>> {
    ArrayList<Animation<?>> uiAnimationList;

    public AnimationManager(VEContext context) {
        super(context, ManagerType.ANIMATION);
        this.uiAnimationList = new ArrayList<>();
        this.TAG = getClass().getSimpleName();
    }

    public Animation<?> create(AnimationType type, String name) {
        return create(type, TransitionType.DEFAULT, name);
    }

    public Animation<?> create(AnimationType type, TransitionType transitionType, String name) {
        Animation<?> animation;
        try {
            int uniqueId = generateUniqueId();
            switch (AnonymousClass1.$SwitchMap$com$samsung$vekit$Common$Type$AnimationType[type.ordinal()]) {
                case 1:
                    animation = new TransformAnimation(this.context, uniqueId, name);
                    break;
                case 2:
                    animation = new FilterAnimation(this.context, uniqueId, name);
                    break;
                case 3:
                    animation = new ToneAnimation(this.context, uniqueId, name);
                    break;
                case 4:
                    Animation<?> animation2 = createTransitionAnimation(transitionType, uniqueId, name);
                    return animation2;
                case 5:
                    animation = new AlphaAnimation(this.context, uniqueId, name);
                    break;
                default:
                    return null;
            }
            add(animation);
            return animation;
        } catch (Exception e) {
            Log.e(this.TAG, "create: ", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.samsung.vekit.Manager.AnimationManager$1, reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$samsung$vekit$Common$Type$AnimationType;
        static final /* synthetic */ int[] $SwitchMap$com$samsung$vekit$Common$Type$TransitionType;

        static {
            int[] iArr = new int[TransitionType.values().length];
            $SwitchMap$com$samsung$vekit$Common$Type$TransitionType = iArr;
            try {
                iArr[TransitionType.FADE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$samsung$vekit$Common$Type$TransitionType[TransitionType.DISSOLVE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$samsung$vekit$Common$Type$TransitionType[TransitionType.SLIDE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$samsung$vekit$Common$Type$TransitionType[TransitionType.WIPE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$samsung$vekit$Common$Type$TransitionType[TransitionType.DEFAULT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            int[] iArr2 = new int[AnimationType.values().length];
            $SwitchMap$com$samsung$vekit$Common$Type$AnimationType = iArr2;
            try {
                iArr2[AnimationType.TRANSFORM.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$samsung$vekit$Common$Type$AnimationType[AnimationType.FILTER.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$samsung$vekit$Common$Type$AnimationType[AnimationType.TONE.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$samsung$vekit$Common$Type$AnimationType[AnimationType.TRANSITION.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$samsung$vekit$Common$Type$AnimationType[AnimationType.ALPHA.ordinal()] = 5;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$samsung$vekit$Common$Type$AnimationType[AnimationType.DEFAULT.ordinal()] = 6;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    private TransitionAnimation createTransitionAnimation(TransitionType type, int uniqueId, String name) {
        TransitionAnimation animation;
        switch (AnonymousClass1.$SwitchMap$com$samsung$vekit$Common$Type$TransitionType[type.ordinal()]) {
            case 1:
                animation = new FadeAnimation(this.context, uniqueId, name);
                add(animation);
                return animation;
            case 2:
                animation = new DissolveAnimation(this.context, uniqueId, name);
                add(animation);
                return animation;
            case 3:
                animation = new SlideAnimation(this.context, uniqueId, name);
                add(animation);
                return animation;
            case 4:
                animation = new WipeAnimation(this.context, uniqueId, name);
                add(animation);
                return animation;
            default:
                return null;
        }
    }

    public void attachAnimation(Animation animation) {
        try {
            checkValidAnimation(animation);
            this.uiAnimationList.add(animation);
            this.context.getNativeInterface().attachAnimation(this, animation.getId());
        } catch (Exception e) {
            Log.e(this.TAG, "attachAnimation: ", e);
        }
    }

    public void detachAnimation(Animation animation) {
        try {
            checkValidAnimation(animation);
            this.uiAnimationList.remove(animation);
            this.context.getNativeInterface().detachAnimation(this, animation.getId());
        } catch (Exception e) {
            Log.e(this.TAG, "detachAnimation: ", e);
        }
    }

    public void clearAnimations() {
        this.uiAnimationList.clear();
        this.context.getNativeInterface().clearAnimations(this);
    }

    public void animate() {
        this.context.getNativeInterface().animate();
    }

    public void checkValidAnimation(Animation animation) throws Exception {
        boolean valid = animation.getAnimationType() != AnimationType.TRANSITION;
        if (!valid) {
            throw new Exception("isInvalidElement : please attach correct uiAnimation(not TransitionAnimation) to AnimationManager.");
        }
    }
}
