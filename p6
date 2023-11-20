public class PlayerController : MonoBehaviour
{
    private bool isImmune = false;
    private float immuneDuration = 5f;

    void Update()
    {
        if (isImmune)
        {
            immuneDuration -= Time.deltaTime;

            if (immuneDuration <= 0f)
            {
                isImmune = false;
                // Reset player's immunity state
            }
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Obstacle"))
        {
            if (!isImmune)
            {
                // Handle game over logic (e.g., reset level, show game over screen)
            }
        }
        else if (other.CompareTag("PowerUp"))
        {
            // Handle power-up logic
            CollectPowerUp();
        }
    }

    void CollectPowerUp()
    {
        isImmune = true;
        immuneDuration = 5f;
        // Apply power-up effects (e.g., visual feedback, sound)
    }
}
