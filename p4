if (playerCollision && powerCollected && obstaclesKinetic)
{
    StartCoroutine(DisableObstaclesKinetic());
}

IEnumerator DisableObstaclesKinetic()
{
    obstaclesKinetic = false;
    yield return new WaitForSeconds(5f);
    obstaclesKinetic = true;
}
